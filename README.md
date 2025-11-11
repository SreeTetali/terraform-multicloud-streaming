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

🚀 Quick Start (AWS Example)

Example deployment of AWS Kinesis Stream using the module in modules/aws.

1️⃣ Initialize Terraform

cd example/aws
terraform init

2️⃣ Review the execution plan

terraform plan

3️⃣ Apply configuration

terraform apply

4️⃣ Destroy infrastructure (when done)

terraform destroy

🔧 Module Input Variables
Variable	Description	Type	Default
stream_name	Name of the stream to create	string	"demo-stream"
shard_count	Number of shards for the stream	number	1
cloud_provider	Target cloud provider (aws/azure/gcp)	string	"was"

| ---------------- | ------------------------------------- | ------ | --------------- |
| Variable         | Description                           | Type   | Default         |
| ---------------- | ------------------------------------- | ------ | --------------- |
| `stream_name`    | Name of the stream to create          | string | `"demo-stream"` |
| `shard_count`    | Number of shards for the stream       | number | `1`             |
| `cloud_provider` | Target cloud provider (aws/azure/gcp) | string | `"aws"`         |

📤 Outputs

| ------------ | ---------------------------- |
| Name         | Description                  |
| ------------ | ---------------------------- |
| `stream_id`  | ID of the created stream     |
| `stream_arn` | ARN or equivalent identifier |

🧩 Multi-Cloud Design Pattern

Each cloud provider’s implementation lives in its own module:

Shared input/output structure ensures compatibility.

You can switch cloud providers by changing only the source parameter.

Example:
module "streaming" {
  source = "../modules/aws" # or ../modules/azure, ../modules/gcp
  stream_name = "my-stream"
  shard_count = 2
}

🧑‍💻 Contributing

Contributions are welcome!
If you’d like to add support for Azure Event Hubs or GCP Pub/Sub, feel free to open a pull request.

Fork the repo

Create a new feature branch (feature/azure-eventhub)

Add or update module code

Test with terraform validate

Submit a PR 🚀

📜 License

This project is licensed under the MIT License

📘 Documentation Placeholder
<!-- BEGIN_TF_DOCS -->

(Terraform module documentation will be auto-generated here using terraform-docs)

<!-- END_TF_DOCS -->


💬 Author

Sree Tetali
🚀 Cloud Infrastructure Engineer | Terraform | AWS | Azure | GCP
🔗 https://github.com/SreeTetali

🌟 Support the Project

If you find this repository helpful, please ⭐ it on GitHub — it helps others discover it and supports your open-source contributions!



