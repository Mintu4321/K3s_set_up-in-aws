#!/bin/bash

echo 'Installing k3s'
curl -sfL https://get.k3s.io | sh -

# Wait for the K3s node to be ready
echo 'Waiting for K3s node to be ready...'
until sudo k3s kubectl get nodes | grep -m 1 ' Ready '; do
  echo 'Waiting for node to be ready...'
  sleep 5
done

# Check for Ready node
sudo k3s kubectl get node

echo 'Installing Helm'
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

# Adding the NGINX Ingress repository and updating Helm
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

# Installing NGINX Ingress Controller using Helm
helm install ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace

# Checking Helm version
helm version

echo 'Installation complete'
