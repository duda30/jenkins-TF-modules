data "aws_subnet" "id-subnet" {
  id = module.network-module.subnet_id
}

# data "aws_s3_bucket" "bucket-data-name" {
#   id = module.back-end-s3.bucket_name
# }

# data "aws_s3_bucket" "bucket-data-name" {
#   id = var.bucket_name
# }

# data "aws_s3_bucket" "key-bucket-data" {
#   id = module.back-end-s3.key_bucket_output
# }

# data "aws_s3_bucket" "region-bucket-data" {
#   id = module.back-end-s3.region_bucket_output
# }
