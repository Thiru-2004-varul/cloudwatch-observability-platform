module "network" {
  source = "./modules/network"
}


module "alb" {
  source     = "./modules/alb"
  vpc_id     = module.network.vpc_id
  subnet_ids = module.network.public_subnet_ids

}

module "autoscaling" {
  source                = "./modules/autoscaling"
  instance_profile_name = module.cloudwatch-agent.instance_profile_name
  subnet_ids            = module.network.private_subnet_ids

}


module "cloudwatch-metrics" {
  source   = "./modules/cloudwatch-metrics"
  alb_arn  = module.alb.alb_arn
  asg_name = module.autoscaling.asg_name

}

module "cloudwatch-logs" {
  source = "./modules/cloudwatch-logs"

}

module "cloudwatch-dashboard" {
  source   = "./modules/cloudwatch-dashboards"
  alb_arn  = module.alb.alb_arn
  asg_name = module.autoscaling.asg_name


}

module "cloudwatch-agent" {
  source = "./modules/cloudwatch-agent"
  name   = "observability"
}

module "cloudwatch-alarm" {
  source = "./modules/cloudwatch-alarms"

  alarm_prefix   = "observability"
  asg_name       = module.autoscaling.asg_name
  alb_arn_suffix = module.alb.alb_arn_suffix

}
