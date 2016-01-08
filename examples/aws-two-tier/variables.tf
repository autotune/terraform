variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/id_rsa.pub
DESCRIPTION
}

variable "key_name" {
  description = "mac-local"
  
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default = "us-west-2"
}

# Amazon Linux AMI 
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-f0091d91"
    us-east-1 = "ami-f0091d91"
    us-west-1 = "ami-f0091d91"
    us-west-2 = "ami-f0091d91"
  }
}
