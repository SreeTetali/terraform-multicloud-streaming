# 🌍 Terraform Multi-Cloud Streaming Infrastructure

[![Terraform](https://img.shields.io/badge/Terraform-v1.9%2B-623CE4?logo=terraform&logoColor=white)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/Cloud-AWS-orange?logo=amazon-aws)](https://aws.amazon.com/)
[![Azure](https://img.shields.io/badge/Cloud-Azure-blue?logo=microsoft-azure)](https://azure.microsoft.com/)
[![GCP](https://img.shields.io/badge/Cloud-GCP-yellow?logo=google-cloud)](https://cloud.google.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

---

## 📖 Overview

This repository demonstrates a **multi-cloud streaming infrastructure** built with **Terraform**, showing how to provision cloud-native streaming services across:

- **AWS Kinesis**
- **Azure Event Hubs**
- **Google Pub/Sub**

It’s designed to showcase **vendor-agnostic Terraform design patterns** and serve as a learning and reference project for cloud engineers and DevOps professionals.

> 🧠 The goal: illustrate how to structure Terraform for multi-cloud, reusable modules that align with best practices in version control, modularity, and cloud neutrality.

---

## 🧱 Repository Structure

```bash
terraform-multicloud-streaming/
├── modules/
│   ├── aws/        # AWS Kinesis streaming module
│   ├── azure/      # (Planned) Azure Event Hubs module
│   └── gcp/        # (Planned) GCP Pub/Sub module
├── examples/
│   ├── aws/        # Example usage of AWS module
│   ├── azure/      # Example usage for Azure (coming soon)
│   └── gcp/        # Example usage for GCP (coming soon)
├── variables.tf
├── main.tf
├── outputs.tf
├── .gitignore
├── LICENSE
└── README.md
