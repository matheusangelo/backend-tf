terraform {
  backend "s3" {
    bucket  = "backend_terraform"
    key     = "tfstate.out"
    region  = "us-east-1"
    profile = "test"
  }
}
