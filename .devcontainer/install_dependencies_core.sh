#!/bin/bash

ENV_NAME=$1
PYTHON_VER=$2
REQUIREMENTS=$3

CPU=$(uname -m)


# Installing prerequisites
apt-get update && \
    apt-get install -y \
    python3-launchpadlib \
    vim \
    sudo \
    && apt update 


# Install miniconda
apt update && apt-get install -y --no-install-recommends \
    software-properties-common \
    && add-apt-repository -y ppa:deadsnakes/ppa \
    && apt update 

wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-${CPU}.sh -O ~/miniconda.sh \
    && /bin/bash ~/miniconda.sh -b -p /opt/conda \
    && export PATH=/opt/conda/bin:$PATH \
    && conda init bash \
    && conda install conda-build

# Set environment
. /root/.bashrc \
    && conda create -y --name $ENV_NAME python=$PYTHON_VER 

echo "conda activate $ENV_NAME" >> ~/.bashrc

conda activate $ENV_NAME

pip3 install -r /settings/requirements_core.txt
