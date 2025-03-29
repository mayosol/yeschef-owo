# yeschef-owo
# YesChef AI 🍳🐶

> A generative AI service that creates adorable images of your pet cooking meals.

## 💡 Overview
YesChef AI takes your pet's photos and a dish name, and generates high-quality AI images of your pet cooking the specified meal.

## 🛠️ Tech Stack
- **Backend**: FastAPI
- **Frontend**: Gradio
- **Image Generation**: ComfyUI, Stable Diffusion, LoRA
- **Infrastructure**: Docker, Ubuntu 22.04 (Massed Compute)

## 🚀 Features
- Upload 3 reference photos of your pet
- Enter the name of a dish (e.g. “kimbap”, “ramen”)
- AI generates a personalized cooking image
- Web-based UI for quick access
- Fully dockerized for reproducibility

## 📁 Project Structure

yeschef-owo/
├── app/               # FastAPI backend
│   ├── main.py        # API server entry point
│   └── comfy_bridge.py # comfyUI interface
├── ui/                # Gradio frontend UI
├── scripts/           # Setup & automation scripts
├── models/            # Model checkpoints & LoRAs (not tracked by Git)
├── workflows/         # ComfyUI workflows (JSON)
├── logs/              # Image generation logs
├── Dockerfile         # Container setup
└── README.md

## 🧠 Future Plans
- Support LoRA training for custom pet styles
- Add high-resolution upscaling pipeline
- Implement image-to-video conversion (cooking clips)
- Add Hugging Face or Civitai model publishing support

## 🐾 Demo
_(Coming soon!)_

## 📜 License
MIT License




