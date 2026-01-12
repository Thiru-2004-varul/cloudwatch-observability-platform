output "alarm_names" {
  description = "Created CloudWatch alarms"
  value = [
    aws_cloudwatch_metric_alarm.high_cpu.alarm_name,
    aws_cloudwatch_metric_alarm.high_memory.alarm_name,
    aws_cloudwatch_metric_alarm.alb_5xx.alarm_name
  ]
}
