from flask import Flask, jsonify
import subprocess
import os

app = Flask(__name__)

@app.route("/build", methods=["POST"])
def build():
    try:
        print("🔧 Starting FPGA build (aarch64)...")
        subprocess.run(["/build/build.sh"], check=True, cwd="/build")
        return jsonify({"status": "ok", "message": "FPGA build completed"}), 200
    except subprocess.CalledProcessError as e:
        print(f"❌ FPGA build failed: {e}")
        return jsonify({"status": "error", "message": f"FPGA build failed: {str(e)}"}), 500
    except Exception as e:
        print(f"❌ Unexpected error: {e}")
        return jsonify({"status": "error", "message": f"Unexpected error: {str(e)}"}), 500

@app.route("/status", methods=["GET"])
def status():
    return jsonify({
        "service": "build-FPGA",
        "architecture": "aarch64",
        "status": "ready"
    })

if __name__ == "__main__":
    print("🚀 FPGA build server starting on port 9002...")
    app.run(host="0.0.0.0", port=9002, debug=True)