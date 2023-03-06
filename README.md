# AWS_Container_Services

This repository contains couple of AWS Container related services demo.

## Ways of managing AWS resources.

* AWS Management [Console](https://console.aws.amazon.com/console/home).
* AWS Command Line Interface (CLI).
    * [Install](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
    * [Usage Example](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-commandstructure.html)
* AWS Software Development Kits (SDKs)
    * [Dev Tools](https://aws.amazon.com/developer/tools/)
    * Usage Examples
        * [Python](https://boto3.amazonaws.com/v1/documentation/api/latest/guide/ec2-example-managing-instances.html#id10)
* AWS APIs
    * via Infrastructure As Code tools like Terraform, CloudFormation


---
## Network

To provision the basic network infrastructure apply the terraform code
```
terraform init
terraform plan --var-file=inputs.tfvars
terraform apply --var-file=inputs.tfvars
```

Aprox Estimated time : 3 min

## Image Build

Instructions to build sample images for the demo.

## ECR

To provision ECR repo and instructions to push images to it.

## ECS

To provision ECS cluster 

## EKS

To provision EKS cluster