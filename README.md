# terraform-tfe-policy-sets

This repo demonstrates how you can get a list of organizations from Terraform Enterprise and configure policy sets to all of those organizations.

## Prerequisites

* [HashiCorp](https://hashicorp.com) [Terraform Enterprise](https://www.terraform.io/docs/enterprise/index.html) (TFE) install.
* [TFE API Token](https://www.terraform.io/docs/cloud/users-teams-organizations/api-tokens.html) that allows you to list all organizations and create policy sets.
* Terraform Enterprise Policy Set. An example is provided for you in this repo in the [policies/test-policy](policies/test-policy) folder.

## Use

* Set the `tfe_hostname` variable to your TFE hostname.
* Set the `TFE_TOKEN` environment variable with your TFE API Token. Please be sure to mark this variable as *sensitive* if you are running this in a TFE workspace.
* Create a Terraform Run.
  ```
  terraform apply
  ```

### Example Plan

The output below shows the plan from an example run fo a TFE instsall that has 3 organizations: `acme`, `org1`, and `org2`.

```
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
+ create

Terraform will perform the following actions:

# tfe_policy_set.policy_set["acme"] will be created
+ resource "tfe_policy_set" "policy_set" {
    + description  = "Policy Set 1"
    + global       = true
    + id           = (known after apply)
    + name         = "policy_set_1"
    + organization = "acme"
    + slug         = {
        + "id"          = "abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz01"
        + "source_path" = "policies/test-policy"
      }
  }

# tfe_policy_set.policy_set["org1"] will be created
+ resource "tfe_policy_set" "policy_set" {
    + description  = "Policy Set 1"
    + global       = true
    + id           = (known after apply)
    + name         = "policy_set_1"
    + organization = "org1"
    + slug         = {
        + "id"          = "abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz01"
        + "source_path" = "policies/test-policy"
      }
  }

# tfe_policy_set.policy_set["org2"] will be created
+ resource "tfe_policy_set" "policy_set" {
    + description  = "Policy Set 1"
    + global       = true
    + id           = (known after apply)
    + name         = "policy_set_1"
    + organization = "org2"
    + slug         = {
        + "id"          = "abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz01"
        + "source_path" = "policies/test-policy"
      }
  }

Plan: 3 to add, 0 to change, 0 to destroy.

```

---
