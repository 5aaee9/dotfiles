#!/usr/bin/env bash

ansible-galaxy role install -r requirements.yml
ansible-galaxy collection install -r requirements.yml

ansible-playbook -i inventory main.yml
