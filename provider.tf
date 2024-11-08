#Main.tf
# Configuration du provider AWS
provider "aws" {
  region = var.region
}

# Déclaration pour utiliser la fonction random
terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}
