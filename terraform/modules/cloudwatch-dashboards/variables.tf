variable "dashboard_name" {
    description = "cloudwatch dashboard name"
    type = string
    default = "observability-dashboard"

  
}

variable "alb_arn" {
    description = "ALB Arn"
    type = string
  
}

variable "asg_name" {
    description = "autoscaling roup name"
    type = string
  
}