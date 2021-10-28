terraform {
  required_providers {
    tfe = {
      version = ">0.26"
    }
  }
  required_version = ">= 1.0"
}

provider "tfe" {
  hostname = var.tfe_hostname
}

data "tfe_organizations" "orgs" {}

data "tfe_slug" "policy_set" {
  source_path = "policies/test-policy"
}

resource "tfe_policy_set" "policy_set" {
  for_each     = toset(data.tfe_organizations.orgs.names)
  name         = "policy_set_1"
  description  = "Policy Set 1"
  organization = each.key
  slug         = data.tfe_slug.policy_set
  global       = true
}
