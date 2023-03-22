#!/bin/bash
# Update the instance
yum update -y
# Install dependencies
yum install -y python3-pip
# Install Ansible
pip3 install ansible
# Verify Ansible installation
ansible --version
