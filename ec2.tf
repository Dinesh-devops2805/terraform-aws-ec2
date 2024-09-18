resource "aws_instance" "terraform" {

    ami = "ami-09c813fb71547fc4f"  # this AMI ID may change over the time 
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0525227f8e227493c"]  # we used allow-all security group ID here 
}
