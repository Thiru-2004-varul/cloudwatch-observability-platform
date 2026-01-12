resource "aws_cloudwatch_dashboard" "this" {
  dashboard_name = var.dashboard_name

  dashboard_body = jsonencode({
    widgets = [
      {
        type = "metric"
        x    = 0
        y    = 0
        width  = 12
        height = 6

        properties = {
          title  = "ALB 5XX Errors"
          region = "us-east-1"
          metrics = [
            [ "AWS/ApplicationELB", "HTTPCode_ELB_5XX_Count", "LoadBalancer", var.alb_arn ]
          ]
          stat   = "Sum"
          period = 60
        }
      },
      {
        type = "metric"
        x    = 12
        y    = 0
        width  = 12
        height = 6

        properties = {
          title  = "ASG CPU Utilization"
          region = "us-east-1"
          metrics = [
            [ "AWS/EC2", "CPUUtilization", "AutoScalingGroupName", var.asg_name ]
          ]
          stat   = "Average"
          period = 60
        }
      }
    ]
  })
}
