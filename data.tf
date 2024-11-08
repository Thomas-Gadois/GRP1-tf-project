#data.tf
# Data source pour obtenir l'AMI Amazon Linux 2 comptaible
data "aws_ami" "amazon_linux_2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel*-x86_64*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Data source pour récupérer les ARNs des rules packages Amazon Inspector
data "aws_inspector_rules_packages" "all_rules" {}