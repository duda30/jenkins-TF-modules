output "instance_id" {
  value = aws_instance.ec2-maria.id
}

output "security_group_id" {
  value = aws_security_group.allow_22_80_myip.id
}

output "private_ip" {
  value = aws_instance.ec2-maria.private_ip
}