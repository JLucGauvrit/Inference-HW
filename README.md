# Inference FPGA — CPU/FPGA Accelerator PoC

This project demonstrates a **Proof of Concept (PoC)** for running Large Language Model (LLM) inference on both **CPU** and **FPGA (ZCU106)**.
It combines C++ inference code, custom HLS kernels, and a Docker-based toolchain to streamline development, build, and deployment.

---

## ✨ Features

* **CPU inference**: portable C++17 backend with baseline performance.
* **FPGA acceleration**: custom HLS kernels for transformer operations (MatMul, Softmax, RMSNorm, RoPE, Add, Mul).
* **Dockerized workflow**:

  * UI container (Flask web interface)
  * CPU build container (CMake/g++)
  * FPGA build container (cross-compilation + Vitis)
  * Shared `source/` volume for source code and models
* **SD Image preparation**: bootable PetaLinux image for ZCU106 board.
* **End-to-end reproducibility**: from local dev to on-board execution.

---

## 📂 Repository Structure

```
.
├── build-CPU/             # Docker context for CPU builds
├── build-FPGA/            # Docker context for FPGA builds (aarch64 + Vitis)
├── docker-compose.yml     # Multi-container orchestration
├── model/                 # Default model (stories15M.bin, tokenizer.bin)
├── source/                # Shared bind mount (staging area for src/model)
├── src/                   # Inference C++ sources
│   ├── main.cpp
│   ├── tensor.cpp / .hpp
│   ├── context.cpp / .hpp
│   ├── decode.cpp / .hpp
│   ├── weight.cpp / .hpp
│   ├── vocab.cpp / .hpp
│   ├── kernel_add.cpp
│   ├── kernel_matmul.cpp
│   ├── kernel_mul.cpp
│   ├── kernel_rmsnorm.cpp
│   ├── kernel_rope.cpp
│   └── kernel_softmax.cpp
├── ui/                    # Web interface (Flask)
│   ├── app.py
│   ├── blueprints/
│   ├── template/
│   └── static/
└── README.md
```

---

## 🚀 Quick Start

### 1. Requirements

* Docker ≥ 28.x with Compose v2
* (Optional) Xilinx Vitis 2025.1 toolchain for FPGA builds
* (Optional) PetaLinux SDK for SD image creation

### 2. Start the environment

```bash
docker compose up --build --watch
```

Open [http://localhost:8080](http://localhost:8080) to access the UI.

### 3. CPU Build

* Go to the **CPU** page in the UI
* Choose:

  * **Base** (use `./src` + `./model`)
  * **Custom** (upload ZIP with your sources/models)
* Trigger a build → output in `./build-CPU/build/`

### 4. FPGA Build

* Stage kernels into `source/src`
* UI triggers the `build-FPGA` container:

  * Compile kernels → `.xo`
  * Link into `binary_container_1.xclbin`
* Transfer artifacts (`.xclbin`, binary) to the ZCU106 board.

### 5. SD Image

* Use the **SD Image** page to generate a bootable PetaLinux image.
* Copy `BOOT.BIN`, `Image`, `system.dtb` to FAT partition.
* Boot board → login via UART/SSH.

---

## 🛠️ Manual Build

### CPU (host)

```bash
mkdir build && cd build
cmake -DUSE_CPU_ONLY=ON ..
make -j$(nproc)
```

### FPGA (cross-compile with toolchain)

```bash
cmake -S . -B build_fpga \
  -DCMAKE_TOOLCHAIN_FILE=toolchain-aarch64.cmake \
  -DCMAKE_BUILD_TYPE=Release
cmake --build build_fpga -j
```

Kernels compiled with Vitis:

```bash
v++ -c -t hw --platform zcu106_dpu -k kernel_matmul src/kernel_matmul.cpp -o matmul.xo
v++ -l -t hw --platform zcu106_dpu *.xo -o binary_container_1.xclbin
```

---

## 📊 Performance

* **CPU** (host): \~23 tok/s
* **FPGA (ZCU106)**: \~8 tok/s (PoC baseline, before kernel optimization)

---

## 📖 Documentation

* Access the documentation site at `/docs` (via the UI)
* Includes: getting started, CPU/FPGA build, SD image, troubleshooting

---

## 📜 License

[BSD 3-Clause License](LICENSE)




