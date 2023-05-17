# secure_workstation
Contains content for setting up a secure workstation

To onboard a machine (Arch Linux), execute the following command from the terminal:

```curl -sSL https://raw.githubusercontent.com/Korbad/secure_workstation/main/install.sh | bash```

# Base setup

Once installed, the secure workstation software can be refreshed by running:

```bash ~/managed_git_repos/korbad_secure_workstation/self.sh```

```ansible-playbook ~/managed_git_repos/korbad_secure_workstation/refresh_project_manager.yml```

```bash ~/managed_git_repos/korbad_secure_workstation/install_collections.sh```

```bash ~/managed_git_repos/korbad_secure_workstation/pre_sudoers.sh```

```bash ~/managed_git_repos/korbad_secure_workstation/post_sudoers.sh```

post_sudoers will display your PUBLIC ssh key, add this to your github account

# Refresh

```bash ~/managed_git_repos/korbad_secure_workstation/refresh.sh```

# After PUBLIC ssh key is added to github account

```ansible-playbook ~/managed_git_repos/korbad_secure_workstation/requires_github_ssh.yml```

# After ansible vars repo is created in github: 
```ansible-playbook ~/managed_git_repos/korbad_secure_workstation/requires_git_vars_repo.yml```

# After Cloudflare account is created:
 ```ansible-playbook ~/managed_git_repos/korbad_secure_workstation/requires_cloudflare.yml```

# To install social and gaming software:
 ```ansible-playbook ~/managed_git_repos/korbad_secure_workstation/social_and_gaming.yml```