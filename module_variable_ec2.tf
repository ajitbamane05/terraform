# variable "ami" {
#   type = string
#   # default = "ami-007855ac798b5175e"
# }

# variable "instance_type" {
#   type    = string
#   default = "t2.micro"
# }

# variable "enviroment" {
#   type = string
# }

variable "ec2_instances" {
  type = map(object({
    ami                         = string
    instance_type               = string
    enviroment                  = string
    key_name                    = string
    availability_zone           = string
    associate_public_ip_address = bool
  }))
}

variable "vpc_id" {}

variable "env" {}