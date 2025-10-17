FROM ubuntu:22.04

# Installation de tous les paquets en une fois
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    cmake build-essential python3 python3-pip dos2unix \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install flask requests

WORKDIR /build

# Créer les répertoires nécessaires
RUN mkdir -p /build/build-src /build/out

# Copier tous les fichiers et définir les permissions
COPY . /build/
RUN chmod +x /build/*.sh /build/*.py && \
    find /build -type f -name "*.sh" -exec dos2unix {} \; && \
    find /build -type f -name "*.py" -exec dos2unix {} \;

# Point de montage pour les volumes
VOLUME ["/build/source", "/build/out"]

EXPOSE 9001

CMD ["python3", "/build/build_server.py"]
