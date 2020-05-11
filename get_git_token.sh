#!/bin/bash

source "common.sh"
az keyvault secret show --vault-name ${KV_NAME} --name ${KV_GIT_SECRET_NAME} | grep value
