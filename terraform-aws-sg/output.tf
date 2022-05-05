output "sg_name" {
  value       = aws_security_group.ssh-allowed.id
  description = "Name of security group to be attached to ec2 instance"
}
