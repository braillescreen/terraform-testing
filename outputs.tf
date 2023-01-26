output "instance_id" {
  description = "Internal AWS ID of the instance."
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Instance public IP."
  value       = aws_instance.app_server.public_ip
}
