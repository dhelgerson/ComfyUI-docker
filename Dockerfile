FROM pytorch/pytorch:2.2.2-cuda12.1-cudnn8-runtime
WORKDIR /comfyui
COPY . .
RUN apt update
RUN apt install -y git
RUN pip install -r requirements.txt
CMD ["/bin/bash","-ic","python3 main.py --listen --multi-user"]
EXPOSE 8188