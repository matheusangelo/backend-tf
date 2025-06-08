terraform {
  backend "s3" {
    bucket  = var.bucket_name
    key     = var.key_state
    region  = var.region
    profile = var.profile
  }
}
