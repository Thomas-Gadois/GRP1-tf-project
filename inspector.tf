#inspector.tf

# Groupe de ressources Amazon Inspector
resource "aws_inspector_resource_group" "group1_resource_group" {
  tags = {
    Name = "${var.group_prefix}EC2" # Nom de l'EC2 à scanner
  }
}

# Cible d'évaluation Amazon Inspector
resource "aws_inspector_assessment_target" "group1_target" {
  name               = "${var.group_prefix}target-${random_id.suffix.hex}" #   Nom de la cible avec une valeur aléatoire pour résoudre le problème de nom lorsque l'on enchaine les apply/destroy
  resource_group_arn = aws_inspector_resource_group.group1_resource_group.arn
}

# Modèle d'évaluation Amazon Inspector
resource "aws_inspector_assessment_template" "group1_template" {
  name               = "${var.group_prefix}Allrules"
  duration           = 180 # Durée en secondes du scan, à ajuster
  target_arn         = aws_inspector_assessment_target.group1_target.arn
  rules_package_arns = data.aws_inspector_rules_packages.all_rules.arns
}