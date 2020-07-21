#!/bin/bash
# Script to be used on a fresh linux installation

# Go to home directory
cd ~/

# Fetch update
sudo apt-get update

# Upgrade everything
sudo apt-get upgrade -y

# Install commonly used pakcages
sudo apt-get install -y curl python3.7 python3-setuptools libpython3.7

# Get PIP
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.7 get-pip.py

echo '' >> .bashrc
echo 'alias python=python3.7' >> .bashrc
echo 'alias pip=pip3.7' >> .bashrc
source .bashrc
source .profile

rm get-pip.py

pip install virtualenv
virtualenv -p python3.7 venv
echo 'source ~/venv/bin/activate' >> .bashrc
source .bashrc
