FROM ubuntu:22.04

# Installation système
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python3 python3-pip rsync curl openssh-client && \
    pip3 install flask requests paramiko && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /work

# Copier le code
COPY . /work/

EXPOSE 8080
CMD ["python3", "app.py"]

