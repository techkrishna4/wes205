module "my_vpc" {
  source       = "./modules/vpc"
  cidr_vpc     = var.cidr_vpc_main
#  cidr_private = var.cidr_private
#  zone_private = var.zone_private
  cidr_public  = var.cidr_public
  zone_public  = var.zone_public
}

module "myec2" {
  source            = "./modules/ec2"
  ami               = var.ami
  instance_type     = var.instance_type
  key_name          = var.key_name
#  private_subnet_id = module.my_vpc.private_subnet_id
  sg_id             = [module.my_vpc.sg_id]
  public_subnet_id  = module.my_vpc.public_subnet_id
}

