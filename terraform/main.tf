module "network" {
  source = "./modules/network"
}


module "alb" {
  source = "./modules/alb"
  vpc_id =module.network.vpc_id
  subnet_ids=module.network.public_subnet_ids
  
}  

module "autoscaling" {
  source = "./modules/autoscaling"
  
}