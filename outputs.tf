output "instance_id" {
  value = module.computing-module.instance_id
}

output "subnet_id" {
  value = module.network-module.subnet_id
}

output "igw_id" {
  value = module.network-module.igw_id
}

output "security_group_id" {
  value = module.computing-module.security_group_id
}

output "private_ip" {
  value = module.computing-module.private_ip
}

output "bucket_name" {
  value = module.back-end-s3.bucket_name
}

output "bucket_acl" {
  value = module.back-end-s3.bucket_acl
}

output "bucket_versioning" {
  value = module.back-end-s3.bucket_versioning
}