resource "aws_instance" "terraform" {

    ami = var.ami_id  # this AMI ID may change over the time 
    instance_type = var.instance_type
    vpc_security_group_ids = var.security_group_ids  # we used allow-all security group ID here 
}
