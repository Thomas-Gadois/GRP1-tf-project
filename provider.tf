#Main.tf
# Configuration du provider AWS
provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0" # Assurez-vous d'utiliser une version compatible
    }
  }
}