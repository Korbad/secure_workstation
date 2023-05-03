#!/bin/bash

# # Refresh current workstation setup
ansible-playbook ~/managed_git_repos/korbad_secure_workstation/pre_sudoers.yml --ask-become-pass
