# Design Decisions

## Why CloudWatch?
Native AWS observability with tight integration and minimal operational overhead.

## Why CloudWatch Agent?
Default EC2 metrics do not include memory and disk usage.

## Why Auto Scaling + ALB?
Provides resilience, scalability, and fault tolerance.

## Why Terraform Plan-Only?
- Cost control
- Safe validation
- Enforced review process

## Why GitHub Actions?
- Native CI/CD integration
- Easy collaboration
- Industry-standard workflows
