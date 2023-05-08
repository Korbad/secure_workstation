# # Perform installations after sudo perms are set and vault file exists
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/requires_github_account.yml --vault-password-file=~/managed_vault_files/vault_password_file
