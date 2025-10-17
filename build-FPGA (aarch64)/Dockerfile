FROM ubuntu:22.04

# Installation des paquets nécessaires pour FPGA + cross-compilation
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    cmake build-essential python3 python3-pip \
    gcc-aarch64-linux-gnu g++-aarch64-linux-gnu \
    wget curl git dos2unix \
    opencl-headers \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install flask requests \
    && mkdir -p /build/build-src /build/out

WORKDIR /build

# Copier tous les fichiers
COPY . /build/

# Rendre les scripts exécutables et convertir les fins de ligne
RUN chmod +x /build/*.sh /build/*.py && \
    find /build -type f -name "*.sh" -exec dos2unix {} \; && \
    find /build -type f -name "*.py" -exec dos2unix {} \;


CMD ["python3", "/build/build_server.py"]