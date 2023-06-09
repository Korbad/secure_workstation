#!/bin/bash
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/vault_password_file.yml

# # Perform installations after sudo perms are set and vault file exists
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/post_sudoers.yml --vault-password-file=~/managed_secrets/default_vault/default_vault
