#!/bin/bash

set -e

# Nettoyer le répertoire de destination
rm -rf /build/build-src/*
mkdir -p /build/build-src

# Copier les fichiers sources
cp /build/source/src/* /build/build-src/
echo "erreur: Impossible de copier les fichiers sources"
cp -r /build/source/model /build

echo "Sources copiées avec succès"
