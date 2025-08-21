from flask import Flask, render_template
from blueprints.cpu import cpu_bp
from blueprints.fpga import fpga_bp
from blueprints.sd import sd_bp
from blueprints.docs import docs_bp

import secrets

def create_app():
    app = Flask(__name__, template_folder="template", static_folder="static")

    # Clé secrète pour la session Flask
    app.secret_key = secrets.token_hex(32)

    # Blueprints (un fichier par outil)
    app.register_blueprint(cpu_bp,  url_prefix="/cpu")
    app.register_blueprint(fpga_bp, url_prefix="/fpga")
    app.register_blueprint(sd_bp,   url_prefix="/sd")
    app.register_blueprint(docs_bp, url_prefix="/docs")

    @app.get("/")
    def index():
        return render_template("index.html")
    
    @app.errorhandler(404)
    def not_found(e):
        return render_template("404.html", title="Not found"), 404

    return app

app = create_app()

if __name__ == "__main__":
    # Active le reloader → Compose Watch peut se limiter à "sync"
    print("🚀 UI server starting on port 8080...")
    app.run(host="0.0.0.0", port=8080, debug=True)
