resource "aws_instance" "group1_ec2" {
  ami                    = data.aws_ami.amazon_linux_2023.id
  instance_type          = "t2.micro"
  key_name               = "${var.group_prefix}key"
  vpc_security_group_ids = [aws_security_group.group1_inspector_sg.id]
  user_data              = var.group1_ec2_user_data # Utilise le script défini dans la variable

  tags = {
    Name = "${var.group_prefix}EC2"
  }
}

#ssh -i Keys/GRP2-Key.pem 