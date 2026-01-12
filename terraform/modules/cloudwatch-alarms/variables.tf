variable "alarm_prefix" {
    description = "prefix for the cloudwatch alarm"
    type = string
}
variable "asg_name" {
    description = "auto scaling group name"
    type = string
  
}

variable "alb_arn_suffix" {
    description = "ALB Arn for the cloudwatch name"
    type = string
  
}