output "alb_arn" {
  description = "ALB ARN"
  value       = aws_lb.this.arn
}

output "target_group_arn" {
  description = "Target group ARN"
  value       = aws_lb_target_group.this.arn
}
