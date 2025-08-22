<div align="center">

# inference-cpp
**A Lightweight C++ Runtime for Language-Model Inference on FPGA**


</div>


`inference-cpp` is an open-source C++ framework that executes small-to-medium
LLM checkpoints on general-purpose FPGAs through Vitis / Vivado HLS–generated
kernels.  A CPU-only fallback build is also provided for development and quick
profiling.

---

## ✨  Features
| | |
|---|---|
| **FPGA first** | Pre-built HLS kernels (matmul, softmax, RoPE, …) and an OpenCL host pipeline optimised for KV260-class boards. |
| **Prompt streaming** | Pass an initial prompt with `--prompt/-p` and generate up to *max_seq* new tokens on the fly. |
| **Compact models** | Ships with a 15 M-parameter TinyLlama checkpoint; any `.bin` weight file using the same tensor layout can be dropped-in. |
| **Pure C++** | Single dependency chain: CMake ≥ 3.20 + g++; no Python at runtime. |
| **CPU fallback** | Compile with `-DUSE_CPU_ONLY` to run everything on x86/arm for debugging or CI. |

---

## ⚙️  Dependencies
| Purpose | Minimum version |
|---------|-----------------|
| **CMake** | 3.22 |
| **g++ / clang++** | C++17 |
| **Xilinx Vitis / Vivado HLS** | 2022.2 (or newer) — only if you rebuild the FPGA bitstream |
| **XRT + OpenCL 2.0 headers** | required at runtime on the target board |

For CPU-only builds you only need CMake and a C++17 compiler.

```bash
# Clone
git clone https://github.com/JLucGauvrit/Inference-cpp
cd Inference-cpp

# Download the demo checkpoint (15 M params) and tokenizer
wget https://huggingface.co/karpathy/tinyllamas/resolve/main/stories15M.bin  -O model/stories15M.bin
wget https://raw.githubusercontent.com/leloykun/llama2.cpp/master/tokenizer.bin -O model/tokenizer.bin
```

## 🛠️  Build
```bash
# Build the CPU-only version
mkdir build && cd build
cmake ..
make 
```

## 🛠  Command-line options

| Flag             | Description                                                     | Default                     |
| ---------------- | --------------------------------------------------------------- | --------------------------- |
| `--weight_path`  | Path to `.bin` weight file                                      | `model/stories15M.bin`      |
| `--vocab_path`   | Path to tokenizer binary                                        | `model/tokenizer.bin`       |
| `--prompt`, `-p` | **Initial prompt** (UTF-8 string)                               | *empty* (generate from BOS) |
| `--max_seq`      | Maximum number of **generated** tokens (prompt is added on top) | `256`                       |
| `--temp`         | Sampling temperature (≤ 0 → greedy)                             | `0.5`                       |
| `--color`        | ANSI-red tokens for easy reading                                | *off*                       |
| `--log`          | Dump intermediate tensors to `./log/`                           | *off*                       |
| `--help`, `-h`   | Show help & exit                                                |                             |

---

## 📚  Reference

This project was originally forked from
[turingmotors/swan](https://github.com/turingmotors/swan) and extended with
OpenCL kernels and an FPGA-friendly tensor layout.

