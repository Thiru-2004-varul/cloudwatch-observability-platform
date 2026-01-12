variable "asg_name" {
  description = "Auto Scaling Group name"
  type        = string
  default     = "observability-asg"
}

variable "min_size" {
  description = "Minimum number of EC2 instances"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of EC2 instances"
  type        = number
  default     = 3
}

variable "desired_capacity" {
  description = "Desired number of EC2 instances"
  type        = number
  default     = 1
}

variable "instance_profile_name" {
  description = "IAM instance profile name for CloudWatch Agent"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets used by the Auto Scaling Group"
  type        = list(string)
}
