#!/bin/bash

echo "📦 Installing system packages..."
sudo apt update && sudo apt install -y git python3.10 python3.10-venv wget curl zip

echo "🐍 Creating Python venv..."
python3.10 -m venv venv
source venv/bin/activate
pip install --upgrade pip

echo "🎨 Installing ComfyUI..."
git clone https://github.com/comfyanonymous/ComfyUI.git
cd ComfyUI
pip install -r requirements.txt
cd ..

echo "📁 Creating folders..."
mkdir -p models/checkpoints models/loras workflows logs

echo "✅ Setup complete!"

