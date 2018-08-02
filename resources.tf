module "vpcModule" {
    source = "./vpc"
 	access_key = "${var.access_key}"
	secret_key = "${var.secret_key}"
	region     = "${var.region}"
}

module "instanceModule" {
	source = "./instance"
	access_key = "${var.access_key}"
 	secret_key = "${var.secret_key}"
 	region     = "${var.region}"
	subnet_public_id="${module.vpcModule.public_subnets[0]}"
	ssh_sg_id="${module.vpcModule.security_group}"
}