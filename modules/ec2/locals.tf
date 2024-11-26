locals {
  common_tags = {
    Name = "EC2"
    Env  = var.enviroment
  }
  fixed_tags = {
    Name = "Fixed"
  }
}
