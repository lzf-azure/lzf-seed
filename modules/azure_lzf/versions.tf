terraform {
  required_version = ">= 0.14"

  required_providers {
      #   https://registry.terraform.io/providers/integrations/github/latest/docs
      github = {
          source    =   "integrations/github"
          version   =   "~> 4.18"
      }

      tfe   = {
          source    =   "hashicorp/tfe"
          version   =   "~> 0.25"
      }
  }
}