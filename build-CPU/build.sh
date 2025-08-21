#!/bin/bash

set -e

echo "🔧 Starting CPU build process..."

# S'assurer que le répertoire de sortie existe et est accessible
echo "📁 Preparing output directory..."
rm -rf /build/out
mkdir -p /build/out
chmod 755 /build/out

echo "📂 Copying sources..."
chmod +x ./src_cp.sh
./src_cp.sh

echo "🏗️ Starting compilation..."
cd /build/build-src

# Configuration avec cmake - le CMakeLists.txt est dans /build
echo "⚙️ Running CMake configuration..."
cmake /build -DCMAKE_BUILD_TYPE=Release

# Compilation
echo "🔨 Running make..."
make -j$(nproc)

if [ $? -ne 0 ]; then
    echo "❌ Build failed"
    exit 1
fi

# Copier tous les artefacts vers le répertoire de sortie
echo "📦 Copying build artifacts to output directory..."

# Copier les exécutables et bibliothèques
find . -name "*.so" -exec cp {} /build/out/ \; 2>/dev/null || true
find . -name "*.a" -exec cp {} /build/out/ \; 2>/dev/null || true
find . -executable -type f ! -name "*.so" ! -name "*.a" -exec cp {} /build/out/ \; 2>/dev/null || true

# Copier les fichiers de configuration ou autres artefacts importants
cp -r CMakeFiles/inference-CPU.dir/ /build/out/ 2>/dev/null || true

# Si on a des modèles, les copier aussi vers la sortie
if [ -d "/build/model" ]; then
    echo "🤖 Copying model files to output..."
    cp -r /build/model /build/out/ 2>/dev/null || true
fi

echo "📋 Contents of output directory:"
ls -la /build/out/

# Vérifier qu'on a au moins un exécutable
if [ -f "/build/out/inference-CPU" ]; then
    echo "✅ Build successful - executable created: inference-CPU"
    echo "📄 File info:"
    file /build/out/inference-CPU
else
    echo "⚠️ Build completed but no main executable found in output"
    echo "Available files in output:"
    find /build/out -type f | head -10
fi

echo "🎉 CPU build process completed!"
echo "📍 All artifacts available in: /build/out/"
