#!/bin/bash

set -e

echo "🔧 FPGA Build Script (aarch64) starting..."

# Vérifier que les sources sont disponibles
if [ ! -d "/build/source" ]; then
    echo "❌ Source directory not found at /build/source"
    exit 1
fi

echo "📂 Copying sources..."
# S'assurer que src_cp.sh est exécutable
chmod +x ./src_cp.sh
./src_cp.sh

echo "🏗️  FPGA compilation in progress..."
cd /build/build-src

# Configuration avec cmake en mode cross-compilation aarch64
echo "⚙️  Configuring CMake for aarch64..."
cmake /build \
    -DCMAKE_TOOLCHAIN_FILE=/build/toolchain-aarch64.cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DFPGA_BUILD=ON

echo "🔨 Building FPGA project..."
make -j$(nproc)

# Vérifier si la compilation a réussi
if [ $? -ne 0 ]; then
    echo "❌ FPGA Build failed"
    exit 1
fi

# Copier les artefacts vers le dossier de sortie
echo "📦 Copying build artifacts..."
mkdir -p /build/out
cp -r ./* /build/out/ 2>/dev/null || true

echo "✅ FPGA Build successful!"
echo "📍 Artifacts available in /build/out/"

# Afficher un résumé des fichiers générés
echo "📋 Generated files:"
find /build/out -type f -name "*.xclbin" -o -name "*.so" -o -name "*.elf" | head -10
