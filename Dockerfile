FROM pytorch/pytorch:2.2.2-cuda12.1-cudnn8-runtime
WORKDIR /comfyui
COPY . .
RUN apt update
RUN apt install -y python3 python3-pip git
RUN pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu121
RUN pip install -r requirements.txt
CMD ["python3","main.py","--listen","--multi-user"]
EXPOSE 8188