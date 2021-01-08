nvidia-docker run -it --rm \
    --gpus all \
    -p 8888:8888 \
    --mount type=bind,source="$(pwd)",destination=/tf \
    image-classification