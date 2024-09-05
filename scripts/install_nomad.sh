#!/bin/bash

# Update package lists and install dependencies
sudo apt-get update -y
sudo apt-get install -y curl unzip

# Download and install Nomad
NOMAD_VERSION="1.6.1"
curl -O https://releases.hashicorp.com/nomad/${NOMAD_VERSION}/nomad_${NOMAD_VERSION}_linux_amd64.zip
unzip nomad_${NOMAD_VERSION}_linux_amd64.zip
sudo mv nomad /usr/local/bin/
nomad -autocomplete-install

# Create Nomad directories
sudo mkdir -p /etc/nomad.d /opt/nomad
sudo chmod a+w /etc/nomad.d
sudo useradd --system --home /etc/nomad.d --shell /bin/false nomad

echo "Nomad successfully installed!"

