#!/bin/bash
# Script to be used on a fresh linux installation

# Copy my configuration to home
cp ./my_conf/* ~/ # Copy all files
cp ./my_conf/.* ~/ # Copy all . files

# Go to home directory
cd ~/

# Fetch update
sudo apt-get update

# Upgrade everything
sudo apt-get upgrade -y

# Install commonly used pakcages
sudo apt-get install -y vim curl python3.7 python3-setuptools libpython3.7

# Get PIP
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.7 get-pip.py

# Cleanup
rm get-pip.py

# Setup python virtualenv
python3.7 -m pip install virtualenv
source .bashrc
source .profile
virtualenv -p python3.7 venv
echo 'source ~/venv/bin/activate' >> .bashrc

