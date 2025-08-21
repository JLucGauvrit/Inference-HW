FROM ubuntu:22.04

# Installation des paquets nécessaires pour FPGA + cross-compilation
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    cmake build-essential python3 python3-pip \
    gcc-aarch64-linux-gnu g++-aarch64-linux-gnu \
    wget curl git \
    opencl-headers \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install flask requests \
    && mkdir -p /build/build-src /build/out

WORKDIR /build

# Création de l'utilisateur
RUN useradd -u 1001 -m builder

# Copier tous les fichiers d'abord
COPY --chown=builder:builder . /build/

# Corriger les permissions ET rendre les scripts exécutables
RUN chmod +x /build/*.sh /build/*.py && \
    chown -R builder:builder /build

USER builder


CMD ["python3", "/build/build_server.py"]