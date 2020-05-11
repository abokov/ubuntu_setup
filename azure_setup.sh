#!/bin/bash

source "common.sh"

read -p "Enter to continue - will create Azure resource group \"${AZ_GROUP}\" and KeyVault = \"$KV_NAME\" "
az group create --name ${AZ_GROUP} --location westus
az keyvault create --name ${KV_NAME} --resource-group ${AZ_GROUP} --location westus


