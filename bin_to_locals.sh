#!/bin/bash
# Script to copy bin to .local/bin in home directory

# Copy everything from bin to ~/.local/bin/
cp -f ./bin/* ~/.local/bin/

# Test mem_clear
mem_clear 3
