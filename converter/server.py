from flask import Flask, request, jsonify
from convert_model import convert_model
import os

app = Flask(__name__)
SHARED_PATH = "/workspace/shared"

@app.route("/convert", methods=["POST"])
def convert():
    data = request.json
    model = os.path.join(SHARED_PATH, data["model"])
    tokenizer = os.path.join(SHARED_PATH, data["tokenizer"])
    output = os.path.join(SHARED_PATH, "model.bin")
    convert_model(model, tokenizer, output)
    return jsonify({"status": "done", "output": "model.bin"})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
