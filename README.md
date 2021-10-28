# terraform-tfe-policy-sets

This repo demonstrates how you can get a list of organizations from Terraform Enterprise and configure policy sets to all of those organizations.

## Prerequisites

* [HashiCorp](https://hashicorp.com) [Terraform Enterprise](https://www.terraform.io/docs/enterprise/index.html) (TFE) install.
* [TFE API Token](https://www.terraform.io/docs/cloud/users-teams-organizations/api-tokens.html) that allows you to list all organizations and create policy sets.
* Terraform Enterprise Policy Set. An example is provided for you in this repo in the [policies/test-policy](policies/test-policy) folder.

## Use

* Set the `tfe_hostname` variable to your TFE hostname.
* Set the `TFE_TOKEN` environment variable with your TFE API Token. Please be sure to mark this variable as *sensitive* if you are running this in a TFE workspace.
