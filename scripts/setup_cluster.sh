#!/bin/bash

# Start Consul
sudo nohup consul agent -dev -client=0.0.0.0 &

# Start Nomad as a server
sudo nohup nomad agent -dev -config /etc/nomad.d -bind 0.0.0.0 &

echo "Nomad and Consul are running in dev mode!"

