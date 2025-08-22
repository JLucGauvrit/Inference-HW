from flask import Flask, request, render_template, redirect
import os, requests

app = Flask(__name__)
SHARED_PATH = "/workspace/shared"

@app.route("/", methods=["GET", "POST"])
def index():
    if request.method == "POST":
        file = request.files['model']
        tokenizer = request.files['tokenizer']
        file.save(os.path.join(SHARED_PATH, file.filename))
        tokenizer.save(os.path.join(SHARED_PATH, tokenizer.filename))
        # Appelle le service converter
        requests.post("http://converter:5000/convert", json={
            "model": file.filename,
            "tokenizer": tokenizer.filename
        })
        return redirect("/")
    files = os.listdir(SHARED_PATH)
    return f"Fichiers : {files}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
