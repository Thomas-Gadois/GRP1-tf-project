#Variables.tf
variable "region" {
  description = "Région AWS"
  type        = string
  default     = "eu-west-1"
}

variable "group_prefix" {
  description = "Préfixe du groupe pour nommer les ressources"
  type        = string
  default     = "Group1" # Valeur par défaut
}

# Définition de la variable pour le script de démarrage
variable "group1_ec2_user_data" {
  default = <<-EOF
    #!/bin/bash
    # Passer en mode super-utilisateur
    sudo su

    # Télécharger le script d'installation de l'agent Inspector
    wget https://inspector-agent.amazonaws.com/linux/latest/install

    # Exécuter le script d'installation
    sudo bash install
  EOF
}

# Générateur d'ID unique pour la target 
resource "random_id" "suffix" {
  byte_length = 4
}