#!/bin/bash

# Actualizar la lista de paquetes
sudo apt-get update

# Instalar Java
sudo apt-get install openjdk-8-jdk -y

# Verificar la versión de Java
java -version

# Añadir el repositorio de Docker
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Instalar Docker
sudo apt-get update
sudo apt-get install docker-ce -y

# Iniciar el servicio de Docker
sudo systemctl start docker

# Habilitar el servicio de Docker para iniciar automáticamente después del reinicio
sudo systemctl enable docker

# Verificar la versión de Docker
docker --version

# Instalar Kubernetes
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

# Verificar la versión de Kubernetes
kubectl version --short

# Instalar Ansible
sudo apt-get update
sudo apt-get install ansible -y

# Verificar la versión de Ansible
ansible --version