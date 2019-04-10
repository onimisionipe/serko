#!/bin/bash
set -e

deployment=$1

echo "starting ${deployment} deployment"
sudo microk8s.kubectl apply -f /srv/helloworld/svc_helloworld.yaml
sudo microk8s.kubectl apply -f "/srv/helloworld/${deployment}.yaml"

