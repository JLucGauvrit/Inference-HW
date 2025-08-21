from flask import Flask, jsonify
import subprocess

app = Flask(__name__)

@app.route("/build", methods=["POST"])
def build():
    try:
        subprocess.run(["/build/build.sh"], check=True)
        return jsonify({"status": "ok", "message": "Build completed"}), 200
    except subprocess.CalledProcessError as e:
        return jsonify({"status": "error", "message": str(e)}), 501

if __name__ == "__main__":
    print("🚀 CPU build server starting on port 9001...")
    app.run(host="0.0.0.0", port=9001)
