FROM ubuntu:22.04

# Installation de tous les paquets en une fois
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    cmake build-essential python3 python3-pip \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install flask requests

WORKDIR /build

# Création de l'utilisateur (doit correspondre à l'UID du docker-compose)
RUN useradd -u 1000 -m builder

# Créer les répertoires nécessaires
RUN mkdir -p /build/build-src /build/out \
    && chown -R builder:builder /build

# Copier tous les fichiers et définir les permissions
COPY . /build/
RUN chown -R builder:builder /build \
    && chmod +x /build/*.sh /build/*.py

# Point de montage pour les volumes (après avoir préparé le contenu)
VOLUME ["/build/source", "/build/out"]

USER builder

EXPOSE 9001

CMD ["python3", "/build/build_server.py"]
