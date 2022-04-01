terraform {
  required_version = ">= 1.0.0"

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