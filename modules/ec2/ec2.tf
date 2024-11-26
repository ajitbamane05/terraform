resource "aws_instance" "web" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  availability_zone           = var.availability_zone
  associate_public_ip_address = var.associate_public_ip_address
  security_groups             = var.security_groups


  tags = {
    Name = "ec2-${var.enviroment}"
  }
}

output "instance_public_ip" {
  value = aws_instance.web.public_ip
}