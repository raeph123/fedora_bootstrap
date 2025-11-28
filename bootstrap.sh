#!/usr/bin/env bash
set -e

sudo dnf install -y ansible git

ansible-galaxy collection install community.general

ansible-pull \
  -U https://github.com/raeph123/fedora-bootstrap.git \
  --inventory-file inventory \
  playbook.yml
