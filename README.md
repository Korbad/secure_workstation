# secure_workstation
Contains content for setting up a secure workstation

To onboard a machine (Arch Linux), execute the following command from the terminal:

```curl -sSL https://raw.githubusercontent.com/Korbad/secure_workstation/main/install.sh | bash```


# Refresh

Once installed, the secure workstation software can be refreshed by running:

```ansible-playbook ~/managed_git_repos/korbad_secure_workstation/refresh.yml```
