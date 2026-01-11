variable "vpc_id" {
  description = "VPC ID for ALB"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets for ALB"
  type        = list(string)
}

variable "alb_name" {
  description = "Application Load Balancer name"
  type        = string
  default     = "observability-alb"
}
