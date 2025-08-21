import os
import shutil
import subprocess
import tempfile
import requests
from pathlib import Path
from zipfile import ZipFile
from werkzeug.utils import secure_filename
from flask import Blueprint, render_template, request, redirect, url_for, flash, session, current_app
from .session_manager import session_manager

cpu_bp = Blueprint("cpu", __name__, template_folder="../template")

"""Paths and URLs for CPU build process."""
ROOT = "/work"
TEMPLATE = os.path.join(ROOT, "inference_template")
SRC_BASE = os.path.join(TEMPLATE, "src")
MODEL_BASE = os.path.join(TEMPLATE, "model")
BUILD_CPU_URL = "http://build-CPU:9001/build"

ALLOWED_EXTENSIONS = {'cpp', 'hpp', 'h', 'zip', 'bin'}

def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

def rsync(src, dst):
    os.makedirs(dst, exist_ok=True)
    subprocess.run(["rsync", "-a", "--delete", f"{src}/", f"{dst}/"], check=True)

def _empty_dir(path: str):
    """Empty the directory at path, removing all contents."""
    shutil.rmtree(path, ignore_errors=True)
    os.makedirs(path, exist_ok=True)

def _copytree_into(src_dir: str, dst_dir: str):
    """Copie le contenu de src_dir *dans* dst_dir (sans recréer la racine)."""
    os.makedirs(dst_dir, exist_ok=True)
    for name in os.listdir(src_dir):
        s = os.path.join(src_dir, name)
        d = os.path.join(dst_dir, name)
        if os.path.isdir(s):
            shutil.copytree(s, d, dirs_exist_ok=True)
        else:
            shutil.copy2(s, d)

def _copy_only_sources(src_root, dst_dir):
    """Copie uniquement les .cpp/.hpp trouvés sous src_root vers dst_dir (aplatis)."""
    os.makedirs(dst_dir, exist_ok=True)
    for ext in (".cpp", ".hpp", ".h"):
        for p in Path(src_root).rglob(f"*{ext}"):
            shutil.copy2(p, dst_dir / p.name)

@cpu_bp.get("/")
def page():
    # Informations sur les builds de l'utilisateur
    session_id = session_manager.get_user_session_id()
    user_builds = session_manager.get_user_builds(session_id)
    
    return render_template("cpu.html", user_builds=user_builds)

@cpu_bp.post("/stage")
def stage():
    # Obtenir le workspace utilisateur isolé
    user_workspace = session_manager.get_user_workspace()
    src_out = user_workspace / "src"
    model_out = user_workspace / "model"
    
    # Nettoyer les répertoires de destination
    _empty_dir(str(src_out))
    _empty_dir(str(model_out))

    mode = request.form.get("mode", "base")

    try:
        if mode == "base":
            # Copier le template vers le workspace utilisateur
            if os.path.exists(TEMPLATE):
                _copytree_into(TEMPLATE, str(user_workspace))
                flash("Template staged into user workspace.", "ok")
            else:
                flash("Template directory not found.", "error")
                return redirect(url_for("cpu.page"))

        elif mode == "custom":
            src_file = request.files.get("src")
            model_file = request.files.get("model")

            if not src_file or not model_file:
                flash("Veuillez fournir les fichiers source et modèle.", "error")
                return redirect(url_for("cpu.page"))

            # Validation des fichiers
            if not (allowed_file(src_file.filename) and allowed_file(model_file.filename)):
                flash("Types de fichiers non autorisés.", "error")
                return redirect(url_for("cpu.page"))

            with tempfile.TemporaryDirectory() as tmpdir:
                src_path = os.path.join(tmpdir, "src")
                model_path = os.path.join(tmpdir, "model")
                os.makedirs(src_path, exist_ok=True)
                os.makedirs(model_path, exist_ok=True)

                # Sauvegarder les fichiers de manière sécurisée
                src_filename = secure_filename(src_file.filename)
                model_filename = secure_filename(model_file.filename)
                
                src_file.save(os.path.join(src_path, src_filename))
                model_file.save(os.path.join(model_path, model_filename))

                # Traiter les fichiers selon leur type
                if src_filename.endswith('.zip'):
                    # Extraire le ZIP des sources
                    with ZipFile(os.path.join(src_path, src_filename), 'r') as zip_ref:
                        zip_ref.extractall(src_path)
                    _copy_only_sources(src_path, src_out)
                else:
                    # Copier directement le fichier source
                    shutil.copy2(os.path.join(src_path, src_filename), src_out)

                if model_filename.endswith('.zip'):
                    # Extraire le ZIP du modèle
                    with ZipFile(os.path.join(model_path, model_filename), 'r') as zip_ref:
                        zip_ref.extractall(str(model_out))
                else:
                    # Copier directement le fichier modèle
                    shutil.copy2(os.path.join(model_path, model_filename), str(model_out))

            flash("Custom sources and model staged into user workspace.", "ok")
        
        else:
            flash(f"Mode not recognized: {mode}", "error")
            
    except Exception as e:
        current_app.logger.error(f"Error in CPU stage: {e}")
        flash("Erreur lors de la préparation des sources.", "error")
        
    return redirect(url_for("cpu.page"))

@cpu_bp.post("/build")
def build():
    # Vérifier si on peut démarrer un nouveau build
    if not session_manager.can_start_build("CPU"):
        flash("Trop de builds en cours. Veuillez réessayer plus tard.", "error")
        return redirect(url_for("cpu.page"))
    
    session_id = session_manager.get_user_session_id()
    user_workspace = session_manager.get_user_workspace()
    
    # Vérifier que les sources sont présentes
    if not (user_workspace / "src").exists() or not any((user_workspace / "src").iterdir()):
        flash("Aucune source trouvée. Veuillez d'abord préparer vos sources.", "error")
        return redirect(url_for("cpu.page"))
    
    try:
        # Enregistrer le début du build
        build_id = session_manager.start_build(session_id, "CPU")
        
        # Données à envoyer au service de build
        build_data = {
            'session_id': session_id,
            'build_id': build_id,
            'workspace_path': str(user_workspace)
        }
        
        # Appel HTTP au service de build
        try:
            response = requests.post(
                BUILD_CPU_URL,
                json=build_data,
                timeout=5  # Timeout court car on veut juste déclencher le build
            )
            
            if response.ok:
                flash(f"Build CPU démarré (ID: {build_id[:8]})", "ok")
            else:
                flash(f"Build status {response.status_code}", "error")
                session_manager.finish_build(build_id, 'failed')
                
        except requests.exceptions.RequestException as e:
            current_app.logger.error(f"Failed to contact build service: {e}")
            flash("Service de build indisponible.", "error")
            session_manager.finish_build(build_id, 'failed')
            
    except Exception as e:
        current_app.logger.error(f"Error in CPU build: {e}")
        flash("Erreur lors du lancement du build.", "error")
    
    return redirect(url_for("cpu.page"))

@cpu_bp.get("/status/<build_id>")
def build_status(build_id):
    """API pour vérifier le statut d'un build CPU"""
    session_id = session_manager.get_user_session_id()
    user_builds = session_manager.get_user_builds(session_id)
    
    if build_id in user_builds:
        return {"status": user_builds[build_id]['status']}
    else:
        return {"status": "not_found"}, 404
    