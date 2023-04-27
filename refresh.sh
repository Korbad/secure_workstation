#!/bin/bash

# Refresh current managed content
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/refresh_managed_artifacts.yml

# Refresh current workstation setup
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/workstation_base.yml

# Refresh current workstation setup
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/refresh.yml
