resource "aws_security_group" "ssh_sg" {
  name = "http_sg"
  vpc_id = "${aws_vpc.vpc.id}"

  # HTTP access from the VPC
  ingress {
    from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    "Names" = "${var.environment_tag}-sg"
    "Environment" = "${var.environment_tag}"
  }
}