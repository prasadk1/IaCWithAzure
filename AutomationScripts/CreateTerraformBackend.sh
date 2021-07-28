#!/usr/bin/env bash
#This script will create: an Azure resource group, an Storage account and a Storage container which will be used to store terraform state

az group create --location canadacentral --name $TERRAFORM_RG

az storage account create --name $TERRAFORM_SA --resource-group $TERRAFORM_RG --location canadacentral --sku Standard_LRS

az storage container create --name terrastgblob202107 --account-name $TERRAFORM_SA
