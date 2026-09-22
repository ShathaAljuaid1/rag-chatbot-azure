#!/bin/bash
set -e

echo "Updating RAG application..."

APP_DIR="/home/azureuser/rag-chatbot-azure"

cd "$APP_DIR"

# Pull the latest code from GitHub using the VM deploy key
GIT_SSH_COMMAND='ssh -i /home/azureuser/.ssh/id_ed25519 -o IdentitiesOnly=yes' git pull origin main

# Move to Docker Compose directory
cd "$APP_DIR/docker"

# Pull the latest Docker images
sudo docker compose pull

# Restart the application
sudo docker compose up -d

echo "Application updated successfully."