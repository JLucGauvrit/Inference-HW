# docs.py
from flask import Blueprint, render_template, abort
from pathlib import Path

docs_bp = Blueprint("docs", __name__, template_folder="template")

# map des pages autorisées -> fichier Jinja à rendre
ALLOWED = {
    "index": "docs/index.html",
    "getting-started": "docs/getting-started.html",
    "architecture": "docs/architecture.html",
    "cpu-build": "docs/cpu-build.html",
    "fpga-build": "docs/fpga-build.html",
    "sd-image": "docs/sd-image.html",
    "troubleshooting": "docs/troubleshooting.html",
}

@docs_bp.route("/", defaults={"page": "index"})
@docs_bp.route("/<page>")
def page(page: str):
    tpl = ALLOWED.get(page)
    if not tpl:
        abort(404)
    return render_template(tpl, title=f"Docs · {page}")
