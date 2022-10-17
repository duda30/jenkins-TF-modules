output "bucket_name" {
  value = aws_s3_bucket.bucket-backend.bucket
}

output "bucket_acl" {
  value = aws_s3_bucket_acl.acl-to-my-bucket.acl
}

output "bucket_versioning" {
  value = aws_s3_bucket_versioning.versioning-my-bucket.versioning_configuration[0]
}

# output "key_bucket_output" {
#   value = data.terraform_remote_state.backend-data.config[1]
# }

# output "region_bucket_output" {
#   value = data.terraform_remote_state.backend-data.config[2]
# }