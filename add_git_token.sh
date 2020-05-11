#!/bin/bash

source "common.sh"

echo "Update/add git_token to Azure Key Vault"
echo "Next you need to enter your token from GitHub: please create a new one from here:    https://github.com/settings/tokens   "
read GIT_TOKEN
echo "GIT_TOKEN=\"$GIT_TOKEN\""

read -p "Press Enter to continue - will add/update  KeyVault"

az keyvault secret set --vault-name ${KV_NAME} --name ${KV_GIT_SECRET_NAME} --value ${GIT_TOKEN}
