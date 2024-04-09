FROM nvidia/cuda:12.4.0-runtime-ubuntu22.04
WORKDIR /comfyui
COPY . .
RUN apt update
RUN apt install -y python3 python3-pip
RUN pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu121
RUN pip install -r requirements.txt
CMD ["python3","main.py","--listen"]
EXPOSE 8188