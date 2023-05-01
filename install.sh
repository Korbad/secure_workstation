#!/bin/bash

# Update the system
sudo pacman -Syu --noconfirm

# Install Ansible
sudo pacman -S ansible --noconfirm

# Verify installation
ansible --version
