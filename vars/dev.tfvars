# ami           = "ami-007855ac798b5175e"
# instance_type = "t2.large"
# enviroment    = "dev"
vpc_id = "vpc-061feaed6c96b5174"
env    = "dev"

ec2_instances = {
  "ec2-1" = {
    "ami"                         = "ami-007855ac798b5175e"
    "instance_type"               = "t2.micro"
    "enviroment"                  = "dev"
    "key_name"                    = "jenkinsServer"
    "availability_zone"           = "us-east-1a"
    "associate_public_ip_address" = true
  }
} 