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
