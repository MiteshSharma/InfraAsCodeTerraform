resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"
  tags {
    "Names" = "${var.environment_tag}-igw"
    "Environment" = "${var.environment_tag}"
  }
}