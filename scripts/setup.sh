#!/bin/bash

echo "📦 Installing system packages..."
sudo apt update && sudo apt install -y git python3.10 python3.10-venv wget curl zip

echo "🐍 Creating Python venv..."
python3.10 -m venv chef
source chef/bin/activate

echo "💡 Installing pip (just in case)..."
python -m ensurepip --upgrade
pip install --upgrade pip

echo "📚 Installing required Python packages..."
pip install pyyaml
pip install -r requirements.txt

echo "📁 Creating project folders..."
mkdir -p models/checkpoints models/loras workflows logs

echo "🔗 Initializing git submodules..."
git submodule update --init --recursive

echo "🧩 Installing ComfyUI Manager..."
git clone https://github.com/ltdrdata/ComfyUI-Manager.git ./ComfyUI/custom_nodes/ComfyUI-Manager

echo "🧩 Installing Custom Nodes..."
cd custom_nodes
git clone https://github.com/pythongosssss/ComfyUI-Custom-Scripts.git
git clone https://github.com/pythongosssss/ComfyUI-WD14-Tagger.git
cd ..

echo "📥 Downloading Checkpoint Model (DreamShaper v8)..."
wget "https://civitai.com/api/download/models/128713?type=Model&format=SafeTensor&size=pruned&fp=fp16" -O models/checkpoints/dreamshaper8.safetensors

echo "✅ All set! Activate your venv with: source chef/bin/activate"
