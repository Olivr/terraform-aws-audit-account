# Audit account

This terraform script provisions S3 buckets to store logs from an AWS cloud infrastructure

## Features

- Pure Terraform script (no third-party wrapper/CLI)
- S3 bucket to receive CloudTrail logs from the **production** account
- S3 bucket to receive Cognito logs (via CloudTrail) from the **identity** account

## Pre-requisites

- [ ] [Terraform CLI](https://learn.hashicorp.com/terraform/getting-started/install.html)
- [ ] [AWS access key](https://console.aws.amazon.com/iam/home#/security_credentials)

## Usage

1. Clone this repo.

2. You can specify a [variable file](#variables-file) or just continue below and answer the Terraform prompts for variables.

3. Initialize Terraform wuth `terraform init`

4. Run Terraform with `terraform apply`

> And if there are any errors due to timeouts or other weird stuff, try to run again `terraform apply`

## Variables file

Here is an example `terraform.tfvars` file

```hcl
/**
 * General variables
 */

organization_name = "acme"

/**
 * AWS Variables
 */

aws_profile        = "acme" // This profile was initiated when I installed the AWS Cli
aws_default_region = "us-east-1"
aws_account_id     = "11111111"
aws_role_name      = "OrganizationAccountAccessRole"


/**
 * Terraform Cloud Variables
 */

tfe_organization = "acme"
tfe_workspace    = "audit"
```
