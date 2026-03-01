

# CloudWatch Observability Platform

## 📌 Overview

This project implements a modular AWS observability platform using Terraform.

It provisions monitoring infrastructure for compute, load balancing, scaling, logging, and performance tracking using Amazon CloudWatch. The setup follows Infrastructure as Code (IaC) principles and uses reusable Terraform modules for better maintainability and scalability.

---

## 🎯 Objectives

- Monitor EC2 instance performance
- Track Application Load Balancer (ALB) health and errors
- Enable Auto Scaling visibility
- Centralize logs with defined retention policies
- Create dashboards for operational monitoring
- Configure alarms for proactive issue detection
- Automate the entire monitoring setup using Terraform

---

## 🏗 Architecture Design

The infrastructure is structured using modular Terraform components:

- **Network Module** – foundational networking resources
- **ALB Module** – load balancer integration for traffic monitoring
- **Auto Scaling Module** – scaling visibility and metrics tracking
- **CloudWatch Agent Module** – instance-level monitoring configuration
- **CloudWatch Metrics Module** – traffic and capacity metrics definition
- **CloudWatch Logs Module** – centralized log group with retention policies
- **CloudWatch Alarms Module** – CPU, memory, and ALB error alarms
- **CloudWatch Dashboards Module** – operational dashboards for performance visibility

This modular design ensures separation of concerns and reusable infrastructure components.

---

## 📊 Monitoring Capabilities

- CPU utilization monitoring
- Memory usage tracking (via CloudWatch Agent)
- ALB error rate monitoring
- Traffic and request metrics
- Auto Scaling capacity tracking
- Centralized log management
- Threshold-based alarm triggering
- Real-time dashboard visualization

---

## 🚀 Results & Impact

- Achieved **100% automated monitoring deployment**
- Reduced manual configuration effort significantly
- Improved visibility into system performance
- Enabled faster issue identification using alarm-based monitoring
- Established reusable Terraform modules for scalable observability

---

## 🛠 Technology Stack

- AWS CloudWatch
- EC2
- Application Load Balancer (ALB)
- Auto Scaling Group
- IAM Roles & Instance Profiles
- Terraform (Modular Architecture)
- CloudWatch Agent

---

## 📂 Project Structure

```
├── modules/
│   ├── network/
│   ├── alb/
│   ├── autoscaling/
│   ├── cloudwatch-agent/
│   ├── cloudwatch-alarms/
│   ├── cloudwatch-dashboards/
│   ├── cloudwatch-logs/
│   └── cloudwatch-metrics/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
├── versions.tf
└── .terraform.lock.hcl
```

Each module is designed to handle a specific layer of monitoring infrastructure.

---

## ▶ Deployment Instructions

### 1️⃣ Configure AWS CLI
Ensure your AWS credentials are properly configured:

```
aws configure
```

### 2️⃣ Initialize Terraform

```
terraform init
```

### 3️⃣ Review Execution Plan

```
terraform plan
```

### 4️⃣ Apply Infrastructure

```
terraform apply
```

---

## 📈 Future Enhancements

- Cross-account monitoring support
- Integration with Prometheus & Grafana
- Alarm-triggered auto-scaling policies
- Enhanced dashboard customization
- Multi-environment support (dev / staging / production)

---

## 📚 Key Concepts Demonstrated

- Infrastructure as Code (IaC)
- Modular Terraform Design
- Observability Engineering
- AWS Monitoring Best Practices
- Scalable Cloud Architecture
- Log Centralization & Retention Management

---

