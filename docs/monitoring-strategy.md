# Monitoring Strategy

## Objective
Provide proactive visibility into infrastructure health and user impact using AWS CloudWatch.

## Metrics Collected
- EC2 CPU utilization (native)
- EC2 memory utilization (via CloudWatch Agent)
- ALB HTTP 5XX error count
- Auto Scaling group capacity metrics

## Logs Collected
- EC2 system logs via CloudWatch Agent
- Centralized logging for troubleshooting

## Alerting Philosophy
- Alert only on actionable signals
- Separate infrastructure health from user-impact metrics
- Avoid alert fatigue by using meaningful thresholds

## Tools Used
- AWS CloudWatch
- CloudWatch Agent
- Terraform
