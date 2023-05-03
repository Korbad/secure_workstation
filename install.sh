#!/bin/bash

# Update the system
sudo pacman -Syu --noconfirm

# Install Ansible
sudo pacman -S ansible --noconfirm

# Verify installation
ansible --version

# Install the korbad.project_management collection
ansible-pull -U https://github.com/Korbad/ansible-collection-korbad.project_management.git -i localhost, --accept-host-key --clean --purge

# Download the secure_workstation playbooks (using the project_management collection)
ansible-pull -U https://github.com/Korbad/secure_workstation.git -i localhost, --accept-host-key --clean --purge
