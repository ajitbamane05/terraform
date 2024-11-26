module "ec2" {
  depends_on = [ 
    aws_security_group.web
   ]

  for_each = var.ec2_instances
  source   = "./modules/ec2"

  ami                         = each.value["ami"]
  instance_type               = each.value["instance_type"]
  enviroment                  = each.value["enviroment"]
  key_name                    = each.value["key_name"]
  availability_zone           = each.value["availability_zone"]
  associate_public_ip_address = each.value["associate_public_ip_address"]
  security_groups             = ["${aws_security_group.web.name}"]
}

