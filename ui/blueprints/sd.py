from flask import Blueprint, render_template, request, redirect, url_for, flash

sd_bp = Blueprint("sd", __name__, template_folder="../template")

@sd_bp.get("/")
def page():
    return render_template("sd.html")

@sd_bp.post("/prepare")
def prepare():
    # TODO: logique de préparation d’image SD (assemblage BOOT.BIN, Image, rootfs...)
    flash("SD image preparation triggered (stub).", "ok")
    return redirect(url_for("sd.page"))
