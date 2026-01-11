output "alb_error_alarm_name" {
    value = aws_cloudwatch_metric_alarm.alb_5xx_errors
  
}

output "asg_cpu_alarm_name" {
    value = aws_cloudwatch_metric_alarm.asg_high_cpu
  
}