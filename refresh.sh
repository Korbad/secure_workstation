#!/bin/bash

# # Refresh current managed content
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/install_collections.yml

# # Execute host-specific playbook
# ansible-playbook ~/managed_git_repos/korbad_secure_workstation/custom.yml --vault-password-file=~/managed_vault_files/vault_password_file -i inventory.yml
