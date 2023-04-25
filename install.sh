#!/bin/bash

# Define variables
SSH_KEY_DIR="$HOME/.ssh"
SSH_KEY_FILE="$SSH_KEY_DIR/id_rsa"

# Check if the .ssh directory exists, if not, create it
if [ ! -d "$SSH_KEY_DIR" ]; then
    echo "Creating .ssh directory..."
    mkdir -p "$SSH_KEY_DIR"
    chmod 700 "$SSH_KEY_DIR"
fi

# Check if the SSH key pair exists, if not, create it
if [ ! -f "$SSH_KEY_FILE" ]; then
    echo "No SSH key pair found. Generating a new one..."
    ssh-keygen -t rsa -b 4096 -f "$SSH_KEY_FILE" -N ""
    echo "SSH key pair generated successfully."
else
    echo "SSH key pair already exists."
fi

# Set the correct permissions for the key files
chmod 600 "$SSH_KEY_FILE"
chmod 644 "${SSH_KEY_FILE}.pub"

# Start the ssh-agent if not running
if ! pgrep -x "ssh-agent" > /dev/null; then
    eval "$(ssh-agent -s)"
fi

# Add the SSH key to the agent
ssh-add "$SSH_KEY_FILE"
echo "SSH key added to the agent."

# Update the system
sudo pacman -Syu --noconfirm

# Install Ansible
sudo pacman -S ansible --noconfirm

# Verify installation
ansible --version

# Install the korbad.project_management collection
ansible-pull -U git@github.com:Korbad/ansible-collection-korbad.project_management.git -i localhost, --accept-host-key --clean --purge

# # Download the secure_workstation playbooks (using the project_management collection)
ansible-pull -U git@github.com:Korbad/secure_workstation.git -i localhost, --accept-host-key --clean --purge

# # Set up workstation configuration
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/workstation.yml
