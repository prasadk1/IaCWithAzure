# When authenticating using the Azure CLI or a Service Principal:
terraform {
  backend "azurerm" {
    storage_account_name = "testterrazstg202107"
    container_name       = "terrastgblob202107"
    key                  = "dev.terraform.tfstate"
  }
}

