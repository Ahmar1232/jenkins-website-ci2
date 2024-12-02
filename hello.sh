#!/bin/bash
echo "Building Website Project..."
echo "Website build completed successfully!"
sh  ansible-playbook -i ../inventory.ini ../webserver.yaml
