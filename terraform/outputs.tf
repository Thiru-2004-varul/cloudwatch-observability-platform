output "vpc_id" {
  description = "VPC ID for the observability platform"
  value       = module.network.vpc_id
}

output "private_subnet_ids" {
  description = "Private subnets used by Auto Scaling Group"
  value       = module.network.private_subnet_ids
}

output "autoscaling_group_name" {
  description = "Auto Scaling Group name"
  value       = module.autoscaling.asg_name
}

output "alb_dns_name" {
  description = "Application Load Balancer DNS name"
  value       = module.alb.alb_dns_name
}

output "cloudwatch_alarms" {
  description = "CloudWatch alarms created for incident detection"
  value       = module.cloudwatch_alarms.alarm_names
}

output "cloudwatch_dashboards" {
  description = "CloudWatch dashboard for observability"
  value       = module.cloudwatch_dashboards.dashboard_name
}
