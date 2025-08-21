from zipfile import Path
from flask import Blueprint, render_template, request, redirect, url_for, flash
import os, shutil, subprocess, tempfile, requests

cpu_bp = Blueprint("cpu", __name__, template_folder="../template")

"""Paths and URLs for CPU build process."""
ROOT = "/work"
ROOT_SOURCE = os.path.join(ROOT, "source")
TEMPLATE = os.path.join(ROOT, "inference_template")
SRC_BASE = os.path.join(TEMPLATE, "src")
MODEL_BASE = os.path.join(TEMPLATE, "model")
SRC_OUT = os.path.join(ROOT_SOURCE, "src")
MODEL_OUT = os.path.join(ROOT_SOURCE, "model")
BUILD_CPU_URL = "http://build-CPU:9001/build"

def rsync(src, dst):
    os.makedirs(dst, exist_ok=True)
    subprocess.run(["rsync","-a","--delete", f"{src}/", f"{dst}/"], check=True)

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
    dst_dir.mkdir(parents=True, exist_ok=True)
    for ext in (".cpp", ".hpp"):
        for p in src_root.rglob(f"*{ext}"):
            shutil.copy2(p, dst_dir / p.name)

@cpu_bp.get("/")
def page():
    return render_template("cpu.html")

@cpu_bp.post("/stage")
def stage():
    _empty_dir(SRC_OUT)
    _empty_dir(MODEL_OUT)

    mode = request.form.get("mode", "base")

    if mode == "base":
        _copytree_into(TEMPLATE, ROOT_SOURCE)
        flash("Template staged into ./source/.", "ok")

    #Cette partie est totalement a refaire, mais pour l'instant on garde le comportement.
    elif mode == "custom":
        src = request.files.get("src")
        model = request.files.get("model")

        if not src or not model:
            flash("Veuillez fournir les fichiers source et modèle.", "error")
            return redirect(url_for("cpu.page"))

        with tempfile.TemporaryDirectory() as tmpdir:
            src_path = os.path.join(tmpdir, "src")
            model_path = os.path.join(tmpdir, "model")
            os.makedirs(src_path, exist_ok=True)
            os.makedirs(model_path, exist_ok=True)

            src.save(os.path.join(src_path, src.filename))
            model.save(os.path.join(model_path, model.filename))

            _copy_only_sources(Path(src_path), SRC_OUT)
            shutil.copy2(os.path.join(model_path, model.filename), MODEL_OUT)

        flash("Custom sources and model staged into ./source/.", "ok")
    
    else:
        flash(f"Mode not reconize : {mode}", "error")
        
    return redirect(url_for("cpu.page"))


@cpu_bp.post("/build")
def build():
    r = requests.post(BUILD_CPU_URL, timeout=3600)
    flash(f"Build status {r.status_code}", "ok" if r.ok else "error")
    return redirect(url_for("cpu.page"))
