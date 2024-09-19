module "ec2"{
    source = "../terraform-aws-ec2"
    
    # these are varriables expected by module, not arguments of resource definition 
    # you can also create variables or else you can directly use values here 
    # ami_id = "ami-09c813fb71547fc4f"
    ami_id  = var.ami_something
    instance_type = "t3.xlarge"
    security_group_ids = ["sg-0525227f8e227493c"]
}