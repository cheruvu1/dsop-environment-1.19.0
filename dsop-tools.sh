#!/bin/bash

#
# This is a script that Install DSOP required tools
#

# Terraform Version# 1.1.7
sudo apt-get update  
wget https://releases.hashicorp.com/terraform/1.1.7/terraform_1.1.7_linux_amd64.zip
sudo apt-get install zip -y
unzip terraform*.zip
sudo mv terraform /usr/local/bin



# JQ
sudo apt-get update 
sudo apt install jq



# Kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(<kubectl.sha256) kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
sudo chmod +x kubectl
sudo mkdir -p ~/.local/bin/kubectl
sudo mv ./kubectl ~/.local/bin/kubectl
# and then add ~/.local/bin/kubectl to $PATH



# Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash


# gpg
sudo apt-get install -y gpg



# Sops
wget https://github.com/mozilla/sops/releases/download/v3.7.1/sops_3.7.1_amd64.deb
sudo dpkg -i sops_3.7.1_amd64.deb


# Kustomize
sudo curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash
sudo mv kustomize /usr/local/bin


# Flux
curl -s https://fluxcd.io/install.sh | sudo bash


# Install Helm3 
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh


terraform version
jq --version
kubectl version
flux --version
kustomize version
sops --version 
gpg --version
az version
