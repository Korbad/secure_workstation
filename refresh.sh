#!/bin/bash

# Refresh current managed content
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/refresh_managed_artifacts.yml

# Refresh current workstation setup
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/pre_sudoers.yml

# Perform installations after sudo perms are set and vault file exists
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/post_sudoers.yml --vault-password-file=~/managed_vault_files/vault_password_file

# Execute host-specific playbook
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/custom.yml --vault-password-file=~/managed_vault_files/vault_password_file
