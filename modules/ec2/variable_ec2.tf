variable "ami" {
  type = string
  # default = "ami-007855ac798b5175e"
}

variable "instance_type" {
  type = string
  # default = "t2.micro"
}

variable "enviroment" {
  type = string
}

variable "key_name" {}

variable "availability_zone" {}
variable "associate_public_ip_address" {}

variable "security_groups" {}