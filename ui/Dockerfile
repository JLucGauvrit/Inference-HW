FROM ubuntu:22.04

# Installation système et création utilisateur
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python3 python3-pip rsync curl openssh-client && \
    pip3 install flask requests paramiko && \
    rm -rf /var/lib/apt/lists/*


WORKDIR /work

RUN useradd -u 1001 webuser
RUN chown -R webuser:webuser /work

USER webuser

# Copier le code avec bonnes permissions
COPY --chown=webuser:webuser . /work/

EXPOSE 8080
CMD ["python3", "app.py"]

