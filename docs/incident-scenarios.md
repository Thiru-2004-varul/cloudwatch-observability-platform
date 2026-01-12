### Example Log Insights Queries

Filter error logs:
fields @timestamp, @message
| filter @message like /ERROR/
| sort @timestamp desc
| limit 20

Count HTTP 5xx errors:
fields @message
| filter @message like /5xx/
| stats count() by bin(5m)


# Incident Scenarios

## Scenario 1: High CPU Utilization
- Alarm triggered when CPU > 80%
- Indicates traffic spike or inefficient application behavior
- Auto Scaling expected to mitigate

## Scenario 2: High Memory Usage
- Detected via CloudWatch Agent
- Prevents Out-Of-Memory crashes
- Investigated via logs

## Scenario 3: ALB 5XX Errors
- User-facing incident (SEV-1)
- Indicates backend failure or misconfiguration
- Immediate investigation required

## Response Strategy
- Analyze CloudWatch dashboards
- Review recent infrastructure changes
- Validate Auto Scaling behavior
