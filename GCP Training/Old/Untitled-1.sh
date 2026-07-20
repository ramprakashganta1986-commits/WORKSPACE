#!/bin/bash

# Create a simple Linux VM using Azure CLI
# Prerequisites: az CLI installed and logged in

RESOURCE_GROUP="myResourceGroup"
LOCATION="eastus"
VM_NAME="myVM"
IMAGE="UbuntuLTS"
ADMIN_USERNAME="azureuser"
SSH_KEY_PATH="$HOME/.ssh/id_rsa.pub"

az group create --name "$RESOURCE_GROUP" --location "$LOCATION"

az vm create \
  --resource-group "$RESOURCE_GROUP" \
  --name "$VM_NAME" \
  --image "$IMAGE" \
  --admin-username "$ADMIN_USERNAME" \
  --ssh-key-values "$SSH_KEY_PATH" \
  --output table

az vm open-port --resource-group "$RESOURCE_GROUP" --name "$VM_NAME" --port 22