from flask import Blueprint, render_template, request, redirect, url_for, flash, session

fpga_bp = Blueprint("fpga", __name__, template_folder="../template")

@fpga_bp.get("/")
def page():
    return render_template("fpga.html")

@fpga_bp.post("/stage")
def stage():
    """Route pour gérer la préparation des sources avec sélection de board"""
    board = request.form.get('board', 'zcu106')
    mode = request.form.get('mode', 'base')
    
    # Stocker la board sélectionnée en session pour l'étape de build
    session['selected_board'] = board
    
    if mode == 'custom':
        # Gérer les fichiers uploadés
        src_file = request.files.get('src')
        model_file = request.files.get('model_zip')
        
        if src_file and src_file.filename:
            # TODO: traiter le fichier source C++
            flash(f"Source file '{src_file.filename}' uploaded for {board.upper()}", "info")
        
        if model_file and model_file.filename:
            # TODO: traiter le fichier model ZIP
            flash(f"Model file '{model_file.filename}' uploaded", "info")
    
    # TODO: traiter la préparation des sources selon la board et le mode
    flash(f"Sources prepared for board {board.upper()} in {mode} mode.", "ok")
    return redirect(url_for("fpga.page"))

@fpga_bp.post("/build")
def build():
    # Récupérer la board sélectionnée depuis la session
    board = session.get('selected_board', 'zcu106')
    
    # TODO: appeler le service build-FPGA avec la board spécifiée
    flash(f"FPGA build started for {board.upper()} (stub).", "ok")
    return redirect(url_for("fpga.page"))
