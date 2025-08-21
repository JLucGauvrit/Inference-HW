FROM ubuntu:22.04

# Build arguments pour UID/GID dynamiques
ARG UID=1000
ARG GID=1000

# Installation système
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python3 python3-pip rsync curl openssh-client && \
    pip3 install flask requests paramiko && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /work

# Créer le groupe et l'utilisateur avec les bons IDs
RUN groupadd -g ${GID} webuser && \
    useradd -u ${UID} -g ${GID} -m webuser

# Créer et configurer les répertoires avec les bonnes permissions
RUN mkdir -p /work/user_data /work/source /work/inference_template && \
    chown -R ${UID}:${GID} /work && \
    chmod 755 /work/user_data

# Copier le code avec bonnes permissions
COPY --chown=${UID}:${GID} . /work/

USER ${UID}:${GID}

EXPOSE 8080
CMD ["python3", "app.py"]
