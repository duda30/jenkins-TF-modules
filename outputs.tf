output "instance_id" {
  value = modules.computing-module.aws_instance.ec2-maria.id
}

output "subnet_id" {
  value = modules.network-module.aws_subnet.subnet-publica.id
}

output "igw_id" {
  value = modules.network-module.aws_internet_gateway.igw-maria.id
}

output "security_group_id" {
  value = modules.computing-module.aws_security_group.allow_22_80_myip.id
}

output "private_ip" {
  value = modules.computing-module.aws_instance.ec2-maria.private_ip
}

