#!/bin/bash
## Author : Prayag Sangode ##

# Check redhat-release
cat /etc/redhat-release

# Install required packages
sudo yum install -y curl policycoreutils-python openssh-server perl

# Install postfix

sudo yum install postfix

# Download & install gitlab repo
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash

# Install gitlab, replace url with your domain
sudo EXTERNAL_URL="https://gitlab.example.com" yum install -y gitlab-ee
