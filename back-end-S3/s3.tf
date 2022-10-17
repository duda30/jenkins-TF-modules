resource "aws_s3_bucket" "bucket-backend" {
  bucket = var.bucket-name
  tags = {
    for key, value in var.resource-tags :
    key => lower(value)
  }
}


resource "aws_s3_bucket_acl" "acl-to-my-bucket" {
  bucket = aws_s3_bucket.bucket-backend.id
  acl    = var.bucket-acl
}

resource "aws_s3_bucket_versioning" "versioning-my-bucket" {
  bucket = aws_s3_bucket.bucket-backend.id
  versioning_configuration {
    status = var.bucket-versioning
  }
}
