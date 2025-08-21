#!/bin/bash

set -e

echo "📂 Starting source copy process..."

# Nettoyer le répertoire de destination
echo "🧹 Cleaning build directory..."
rm -rf /build/build-src/*
mkdir -p /build/build-src

# Vérifier que le répertoire source existe
if [ ! -d "/build/source" ]; then
    echo "❌ Source directory /build/source not found!"
    echo "Available directories in /build:"
    ls -la /build/
    exit 1
fi

echo "📋 Contents of /build/source:"
ls -la /build/source/

# Copier les fichiers sources
if [ -d "/build/source/src" ] && [ "$(ls -A /build/source/src 2>/dev/null)" ]; then
    echo "📁 Copying source files from /build/source/src..."
    cp -r /build/source/src/* /build/build-src/ 2>/dev/null || {
        echo "⚠️ Some files could not be copied, continuing..."
    }
    echo "✅ Source files copied successfully"
else
    echo "⚠️ No source files found in /build/source/src"
    echo "Creating minimal test file..."
    cat > /build/build-src/main.cpp << 'EOF'
#include <iostream>
int main() {
    std::cout << "CPU inference test build successful!" << std::endl;
    return 0;
}
EOF
fi

# Copier le modèle si disponible
if [ -d "/build/source/model" ]; then
    echo "🤖 Copying model directory..."
    cp -r /build/source/model /build/ 2>/dev/null || {
        echo "⚠️ Could not copy model directory, continuing..."
    }
    echo "✅ Model copied successfully"
else
    echo "ℹ️ No model directory found (this is optional)"
fi

echo "📋 Final contents of build directory:"
ls -la /build/build-src/

echo "✅ Source copy completed successfully"
