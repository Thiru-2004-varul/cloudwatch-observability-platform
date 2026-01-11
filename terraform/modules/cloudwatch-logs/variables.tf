variable "log_group_name" {
    description = "central log group name"
    type = string
    default = "/aws/observability/Application/"

  
}

variable "retention_days" {
    description = "log retention period"
    type = number
    default = 14
  
}