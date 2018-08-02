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
variable "spot_instance_counts" {
  description = "EC2 spot instance counts"
  default = 1
}
variable "spot_instance_type" {
  description = "EC2 spot instance type"
  default = "one-time"
}
variable "spot_price" {
  description = "EC2 spot instance price"
  default = 0.02
}
variable "spot_wait_for_fulfillment" {
  description = "EC2 spot instance wait for fulfillment"
  default = true
}