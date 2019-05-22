FROM nvidia/cuda:9.0-cudnn7-devel

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    python3-dev \
    python3-pip \
    python3-setuptools \
    python3-wheel
RUN pip3 install --upgrade pip
RUN pip3 install tensorflow-gpu==1.9 keras

RUN apt-get install -y wget
RUN wget https://raw.githubusercontent.com/fchollet/keras/master/examples/mnist_cnn.py

CMD ["python3", "/mnist_cnn.py"]
SHELL ["/bin/bash", "-c"]