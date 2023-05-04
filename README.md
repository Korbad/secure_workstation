# secure_workstation
Contains content for setting up a secure workstation

To onboard a machine (Arch Linux), execute the following command from the terminal:

```curl -sSL https://raw.githubusercontent.com/Korbad/secure_workstation/main/install.sh | bash```

# Base setup

Once installed, the secure workstation software can be refreshed by running:

```bash ~/managed_git_repos/korbad_secure_workstation/self.sh```

```bash ~/managed_git_repos/korbad_secure_workstation/install_collections.sh```

```bash ~/managed_git_repos/korbad_secure_workstation/pre_sudoers.sh```

```bash ~/managed_git_repos/korbad_secure_workstation/post_sudoers.sh```

# Refresh

```bash ~/managed_git_repos/korbad_secure_workstation/refresh.sh```

# After PUBLIC ssh key is added to github account

```ansible-playbook ~/managed_git_repos/korbad_secure_workstation/requires_github_ssh.yml```

```ansible-playbook ~/managed_git_repos/korbad_secure_workstation/requires_git_vars_repo.yml```
