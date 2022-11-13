terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.38.0"
    }
  }

  backend "s3" {
    bucket = "k8s-lab-tf-state"
    key    = "state"
    region = "us-east-1"
  }
}
