# Image Classification

Tools for preparing an image dataset and training an Image Classification Neural Network, using TensorFlow and TensorFlow Lite.

## The provided notebooks

Two Python notebooks are provided on this repository:

- format_images.ipynb
- train.ipynb

As the names suggest, the first one should be used to format all the dataset images that will be used for the training session, while the second one is responsible for the training itself. The step-by-step guide for using each one can be found on the notebook.

## Running the notebooks locally

Both of the notebooks provided by this project may be run locally, using the terminal CLI or VSCode notebook support.
The specific steps required for each one may be found in the beginning of them.

> If desired, the GPU can be used during the training, in order to speed up the process. For that, some [NVIDIA packages](https://www.tensorflow.org/install/gpu#software_requirements) are needed.

## Running using the Docker image

Instead of installing all TensorFlow and NVIDIA related packages, a Docker container may be used. This repository
provides a Dockerfile that extends the [Tensorflow GPU Jupyter Docker container](https://www.tensorflow.org/install/docker)

In order to use it, first is necessary to install:

- [Docker](https://docs.docker.com/get-docker/)
- [NVIDIA drivers](https://github.com/NVIDIA/nvidia-docker/wiki/Frequently-Asked-Questions#how-do-i-install-the-nvidia-driver)
- [nvidia-docker2](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)

After installing all of the required tool-kits, build the docker image.

```shell
docker build -t image-classification .
```

To run the docker image, just use the `./run.sh` script provided.

```shell
chmod +x ./run.sh
./run.sh
```

A Jupyter server will be opened, and you may connect to it by coping the presented address and pasting it to the server URI address on VSCode.
