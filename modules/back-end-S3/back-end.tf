terraform {
  backend "s3" {
    bucket = var.bucket-name
    key    = var.key-remote-backend
    region = var.bucket-region
  }
}