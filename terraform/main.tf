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

module "cloudwatch-metrics" {
  source = "./modules/cloudwatch-metrics"
  alb_arn = module.alb.alb_arn
  asg_name = module.autoscaling.asg_name
  
}

module "cloudwatch-logs" {
  source = "./modules/cloudwatch-logs"
  
}