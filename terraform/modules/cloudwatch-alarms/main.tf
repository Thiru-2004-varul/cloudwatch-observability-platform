resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "${var.alarm_prefix}-high-cpu"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 60
  statistic           = "Average"
  threshold           = 80

  dimensions = {
    AutoScalingGroupName = var.asg_name
  }

  alarm_description = "High CPU usage on EC2 instances"
}

resource "aws_cloudwatch_metric_alarm" "high_memory" {
  alarm_name          = "${var.alarm_prefix}-high-memory"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "mem_used_percent"
  namespace           = "observability/EC2"
  period              = 60
  statistic           = "Average"
  threshold           = 75


  alarm_description = "High memory usage on EC2 instances"
}

resource "aws_cloudwatch_metric_alarm" "alb_5xx" {
  alarm_name          = "${var.alarm_prefix}-alb-5xx"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "HTTPCode_ELB_5XX_Count"
  namespace           = "AWS/ApplicationELB"
  period              = 60
  statistic           = "Sum"
  threshold           = 5

  dimensions = {
    LoadBalancer = var.alb_arn_suffix
  }

  alarm_description = "ALB returning 5XX errors"
}
