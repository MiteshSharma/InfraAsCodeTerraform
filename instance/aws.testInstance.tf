#resources
resource "aws_instance" "testInstance" {
  ami           = "${var.instance_ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_public_id}"
  vpc_security_group_ids = ["${var.ssh_sg_id}"]
  count = "${var.instance_counts}"

   tags {
		"Names" = "${var.environment_tag}-instance"
		"Environment" = "${var.environment_tag}"
	}
}

resource "aws_spot_instance_request" "testSpotInstance" {
  ami           = "${var.instance_ami}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.subnet_public_id}"
  vpc_security_group_ids = ["${var.ssh_sg_id}"]
  count         = "${var.spot_instance_counts}"
  wait_for_fulfillment = "${var.spot_wait_for_fulfillment}"
  spot_type     = "${var.spot_instance_type}"
  spot_price    = "${var.spot_price}"

  tags {
    "Names" = "${var.environment_tag}-instance"
    "Environment" = "${var.environment_tag}"
  }
}
