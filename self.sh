#!/bin/bash

# Get the path of the script
script_path="$(dirname "$(readlink -f "$0")")"

# Execute git pull in the directory the script is in
git -C "$script_path" pull
