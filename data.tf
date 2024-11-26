data "aws_ami" "ec2" {
  most_recent = true
  filter {
    name   = "name"
    values = ["*Ubuntu Server 22.04 LTS *"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}
resource "aws_instance" "web" {
  count         = 0
  ami           = data.aws_ami.ec2.image_id
  instance_type = "t2.micro"

}

data "aws_vpc" "default" {
  id = var.vpc_id
}