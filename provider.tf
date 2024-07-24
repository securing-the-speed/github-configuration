provider "github" {
  owner = "securing-the-speed"
}

terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 5.3"
    }
  }

  backend "s3" {
    bucket         	   = "terraform-state.359300022316"
    key              	   = "state/terraform.tfstate"
    region         	   = "us-west-2"
    encrypt        	   = true
    dynamodb_table = "github_configuration_ci_cd_tf_lockid"
  }
}
