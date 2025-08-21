import os
import uuid
import time
import shutil
import threading
from pathlib import Path
from flask import session, current_app

class SessionManager:
    def __init__(self, base_path="/work/user_data", cleanup_interval=3600):
        self.base_path = Path(base_path)
        
        # Créer le répertoire base avec gestion d'erreurs
        try:
            self.base_path.mkdir(exist_ok=True, parents=True)
            # Essayer de définir les permissions
            os.chmod(self.base_path, 0o755)
        except PermissionError:
            # Si on ne peut pas créer dans /work/user_data, utiliser /tmp
            import tempfile
            self.base_path = Path(tempfile.gettempdir()) / "user_data"
            self.base_path.mkdir(exist_ok=True, parents=True)
            print(f"Warning: Using fallback directory {self.base_path}")
        
        self.cleanup_interval = cleanup_interval
        self.active_builds = {}
        self.build_lock = threading.Lock()
        
        # Démarrer le nettoyage automatique
        self._start_cleanup_thread()
    
    def get_user_session_id(self):
        """Récupère ou crée un ID de session unique pour l'utilisateur"""
        if 'user_session_id' not in session:
            session['user_session_id'] = str(uuid.uuid4())
        return session['user_session_id']
    
    def get_user_workspace(self):
        """Crée et retourne le répertoire de travail de l'utilisateur"""
        session_id = self.get_user_session_id()
        user_dir = self.base_path / session_id
        user_dir.mkdir(exist_ok=True)
        
        # Créer les sous-répertoires nécessaires
        (user_dir / "src").mkdir(exist_ok=True)
        (user_dir / "model").mkdir(exist_ok=True)
        (user_dir / "build").mkdir(exist_ok=True)
        (user_dir / "out").mkdir(exist_ok=True)
        
        # Marquer comme utilisé récemment
        (user_dir / ".last_used").touch()
        
        return user_dir
    
    def can_start_build(self, build_type="CPU"):
        """Vérifie si un nouveau build peut être démarré"""
        max_builds = int(os.environ.get('MAX_CONCURRENT_BUILDS', 3))
        
        with self.build_lock:
            # Nettoyer les builds terminés
            self._cleanup_finished_builds()
            
            # Compter les builds actifs
            active_count = len([b for b in self.active_builds.values() 
                              if b['status'] == 'running'])
            
            return active_count < max_builds
    
    def start_build(self, session_id, build_type, board=None):
        """Enregistre le début d'un build"""
        with self.build_lock:
            build_id = str(uuid.uuid4())
            self.active_builds[build_id] = {
                'session_id': session_id,
                'build_type': build_type,
                'board': board,
                'status': 'running',
                'start_time': time.time()
            }
            return build_id
    
    def finish_build(self, build_id, status='completed'):
        """Marque un build comme terminé"""
        with self.build_lock:
            if build_id in self.active_builds:
                self.active_builds[build_id]['status'] = status
                self.active_builds[build_id]['end_time'] = time.time()
    
    def get_user_builds(self, session_id):
        """Retourne les builds de l'utilisateur actuel"""
        with self.build_lock:
            return {k: v for k, v in self.active_builds.items() 
                   if v['session_id'] == session_id}
    
    def _cleanup_finished_builds(self):
        """Nettoie les builds terminés depuis plus d'une heure"""
        current_time = time.time()
        to_remove = []
        
        for build_id, build_info in self.active_builds.items():
            if (build_info['status'] != 'running' and 
                'end_time' in build_info and 
                current_time - build_info['end_time'] > 3600):
                to_remove.append(build_id)
        
        for build_id in to_remove:
            del self.active_builds[build_id]
    
    def _start_cleanup_thread(self):
        """Démarre le thread de nettoyage automatique"""
        def cleanup_old_sessions():
            while True:
                try:
                    current_time = time.time()
                    for session_dir in self.base_path.iterdir():
                        if not session_dir.is_dir():
                            continue
                        
                        last_used_file = session_dir / ".last_used"
                        if last_used_file.exists():
                            last_used = last_used_file.stat().st_mtime
                            # Supprimer les sessions inactives depuis plus de 24h
                            if current_time - last_used > 86400:
                                try:
                                    shutil.rmtree(session_dir)
                                    current_app.logger.info(f"Cleaned up old session: {session_dir.name}")
                                except Exception as e:
                                    current_app.logger.error(f"Failed to cleanup {session_dir}: {e}")
                except Exception as e:
                    current_app.logger.error(f"Cleanup thread error: {e}")
                
                time.sleep(self.cleanup_interval)
        
        cleanup_thread = threading.Thread(target=cleanup_old_sessions, daemon=True)
        cleanup_thread.start()

# Instance globale
session_manager = SessionManager()
