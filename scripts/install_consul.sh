#!/bin/bash

# Download and install Consul
CONSUL_VERSION="1.14.1"
curl -O https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip
unzip consul_${CONSUL_VERSION}_linux_amd64.zip
sudo mv consul /usr/local/bin/
consul -autocomplete-install

# Create Consul directories
sudo mkdir -p /etc/consul.d /opt/consul
sudo chmod a+w /etc/consul.d
sudo useradd --system --home /etc/consul.d --shell /bin/false consul

echo "Consul successfully installed!"

