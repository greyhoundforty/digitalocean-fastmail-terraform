# Fastmail Mail Records for DigitalOcean Domain
I use Fastmail as my mail destination for many of my testing domains, but a fair amount of my domains are hosted at Digital Ocean. This repo will create the necessary DNS records in Digital Ocean for the domain to receive mail via Fastmail.

> This code assumes you have created or will create the [domain alias](https://www.fastmail.com/help/receive/domains-setup-mxonly.html) within Fastmail. 

## To use this code
**Step 1: Clone repo**

```shell
$ git clone https://github.com/greyhoundforty/digitalocean-fastmail-terraform.git
$ cd digitalocean-fastmail-terraform
```

**Step 2: Update example `.tfvars` file**
You will need to update the `terraform.tfvars.example` and then rename it so that Terraform picks up the variables. The file has comments for each item that you need to provide. When done updating the file rename it:

```shell
$ cp terraform.tfvars.example terraform.tfvars
```

**Step 3: Initialize Terraform**
The `version.tf` file will automatically download the most up to date version of the IBM Cloud Terraform Provider when you initialize the directory.

```shell
$ terraform init
```

**Step 4: Create Terraform plan**
If the `terraform init` command completed without error you are now ready to create a plan for your deployment.

```shell
$ terraform plan -out default.tfplan
```

**Step 5: Apply generated plan**
If our plan generated successfully we can now deploy our resources using the `apply` command.

```shell
$ terraform apply default.tfplan
```