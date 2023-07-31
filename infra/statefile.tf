terraform {
  backend "s3" {
    bucket    = "vegeta-terraform-remote-state"
    key       = "infra.tfstate"
    region    = "eu-west-2"
    profile   = "default"
  }
}