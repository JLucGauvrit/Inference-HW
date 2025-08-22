from flask import Flask, jsonify
import subprocess, os

app = Flask(__name__)
SHARED_PATH = "/workspace/shared"

@app.route("/compile", methods=["POST"])
def compile_kernels():
    os.chdir(SHARED_PATH)
    kernels = ["matmul", "mul", "rmsnorm", "softmax", "add", "rope"]
    for k in kernels:
        subprocess.run([
            "v++", "-c", "-t", "hw", "--platform", "zcu106_dpu",
            "-k", f"kernel_{k}", f"src/kernel_{k}.cpp",
            "-o", f"kernel_{k}.xo"
        ], check=True)
    subprocess.run([
        "v++", "-l", "-t", "hw", "--platform", "zcu106_dpu",
        "kernel_*.xo", "-o", "binary_container_1.xclbin"
    ], check=True)
    return jsonify({"status": "compiled", "output": "binary_container_1.xclbin"})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=6000)
