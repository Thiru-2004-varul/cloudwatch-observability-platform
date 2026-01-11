variable "asg_name" {
  description = "Auto Scaling Group name"
  type        = string
  default     = "observability-asg"
}

variable "min_size" {
  type    = number
  default = 1
}

variable "max_size" {
  type    = number
  default = 3
}

variable "desired_capacity" {
  type    = number
  default = 1
}
