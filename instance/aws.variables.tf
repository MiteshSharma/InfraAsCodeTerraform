# Variables

variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-east-2"
}
variable "subnet_public_id" {
  description = "VPC public subnet id"
  default = ""
}
variable "ssh_sg_id" {
  description = "EC2 ssh security group"
  default = ""
}
variable "environment_tag" {
  description = "Environment tag"
  default = "Instance"
}
variable "instance_ami" {
  description = "EC2 instance ami"
  default = "ami-922914f7"
}
variable "instance_type" {
  description = "EC2 instance type"
  default = "t2.micro"
}
variable "instance_counts" {
  description = "EC2 instance counts"
  default = 1
}