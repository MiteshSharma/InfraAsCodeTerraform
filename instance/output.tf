output "test_instance_public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = ["${aws_instance.testInstance.*.public_ip}"]
}
