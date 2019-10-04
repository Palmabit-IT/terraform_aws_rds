# Terraform AWS RDS

Terraform to setup an AWS RDS cluster

## Prerequisites

* Terraform v0.12.9 - [https://www.terraform.io/](https://www.terraform.io/)

## Environment variables (optional)

Example:

```
export AWS_ACCOUNT_ID=123456789012
export AWS_ACCESS_KEY_ID=ABCD...
export AWS_SECRET_ACCESS_KEY=abcd...
export AWS_REGION=eu_west1
export master_password=12345678...
```

## How to run

### Init

```
$  terraform init
```

### Show validate

```
$  terraform validate
```

### Create plan

```
$  terraform plan -out=tfplan -input=false 
    -var "cluster_identifier=aurora-cluster"
    -var "aws_account_id=${AWS_ACCOUNT_ID}"
    -var "access_key=${AWS_ACCESS_KEY_ID}"
    -var "secret_key=${AWS_SECRET_ACCESS_KEY}"
    -var "region=${AWS_REGION}"   
    -var "master_password=${MASTER_PASSWORD}"   
```

### Show plan

```
$  terraform show
```

### Execute plan

```
$  terraform apply tfplan
```

If the RDS instance already exists when you add these lines you will need to run

```
$  terraform refresh
```

### Destroy

```
$  terraform destroy -input=false 
    -var "cluster_identifier=aurora-cluster"
    -var "aws_account_id=${AWS_ACCOUNT_ID}"
    -var "access_key=${AWS_ACCESS_KEY_ID}"
    -var "secret_key=${AWS_SECRET_ACCESS_KEY}"
    -var "region=${AWS_REGION}"   
    -var "master_password=${MASTER_PASSWORD}"  
```
