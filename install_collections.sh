#!/bin/bash

# Install the korbad.project_management collection
ansible-pull -U https://github.com/Korbad/ansible-collection-korbad.project_management.git -i localhost, --accept-host-key --clean --purge

# Download the secure_workstation playbooks (using the project_management collection)
ansible-pull -U https://github.com/Korbad/secure_workstation.git -i localhost, --accept-host-key --clean --purge


ansible-playbook ~/managed_git_repos/korbad_secure_workstation/install_collections.yml
