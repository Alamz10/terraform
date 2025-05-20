terraform {
  backend "azurerm" {
    resource_group_name  = "demo-resources"  # Can also be set via `ARM_CLIENT_ID` environment variable.
    storage_account_name = "tfstoragebucket"                              # There is not environment variable support for this input.
    container_name       = "tf-state-prod"                               # There is not environment variable support for this input.
    key                  = "prod.terraform.tfstate"                # There is not environment variable support for this input.
  }
}
