#!/bin/bash

# Refresh current managed content
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/refresh_managed_artifacts.yml

# Refresh current workstation setup
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/pre_sudoers.yml

# Perform installations that require sudo
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/post_sudoers.yml

