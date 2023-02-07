#!/bin/bash

# Actualizar la lista de paquetes
sudo yum update -y

# Instalar Java
sudo yum install java-1.8.0-openjdk-devel -y

# Verificar la versión de Java
java -version

# Añadir el repositorio de Docker
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Instalar Docker
sudo yum install docker-ce docker-ce-cli containerd.io -y

# Iniciar el servicio de Docker
sudo systemctl start docker

# Habilitar el servicio de Docker para iniciar automáticamente después del reinicio
sudo systemctl enable docker

# Verificar la versión de Docker
docker --version

# Descargar e instalar el paquete de Kubernetes
curl -LO https://dl.k8s.io/release/stable.txt
sudo KVER=$(cat stable.txt)
sudo rm -f stable.txt
sudo yum install -y kubectl-$KVER

# Verificar la versión de Kubernetes
kubectl version --short

# Instalar Ansible
sudo yum install epel-release -y
sudo yum install ansible -y

# Verificar la versión de Ansible
ansible --version