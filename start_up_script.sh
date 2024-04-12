#!/bin/bash

# 1. Create a folder named uk_power_analytics
sudo mkdir -p test_repo

# 2. Install Git and Docker Compose
sudo apt-get update
sudo apt-get install -y git docker.io docker-compose

# 3. Git clone a GitHub repo
git clone https://github.com/lilychau1/test_terraform_gcp_vm_docker.git test_repo
