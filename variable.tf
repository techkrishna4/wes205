variable "cidr_vpc_main" {
  default = "10.10.0.0/16"
}

variable "zone_private" {
  default = "eu-west-2a"
}

variable "cidr_private" {
  default = "10.10.0.0/20"
}

variable "cidr_public" {
  default = "10.10.16.0/20"
}

variable "zone_public" {
  default = "eu-west-2b"
}

variable "ami" {
  default = "ami-0e34bbddc66def5ac"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "av-key"
}

