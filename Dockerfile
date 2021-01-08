FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN apt install -y python3-dev python3-scipy
RUN pip install --upgrade pip
RUN pip install Pillow wandb pandas

WORKDIR /app