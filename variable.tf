variable "cidr_vpc_main" {
  default = "10.11.0.0/16"
}

#variable "zone_private" {
#  default = "us-east-1"
#}

#variable "cidr_private" {
#  default = "10.11.0.0/24"
#}

variable "cidr_public" {
  default = "10.11.1.0/24"
}

variable "zone_public" {
  default = "east-us-1a"
}

variable "ami" {
  default = "ami-****"
}

variable "instance_type" {
  default = "t3.medium"
}

variable "key_name" {
  default = "anil-pro"
}

