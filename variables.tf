# This is mandatory, user should supply
variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
}

# optional, default value is t3.micro. User can always override
# t3.micro, t3.medium, t3.small
variable "instance_type"{
    default = "t3.micro"
    type = string
    validation {
        condition  = contains(["t3.micro", "t3.medium","t3.small"], var.instance_type)
        error_message = "Instance type should be t3.micro, t3.medium or t3.small"
    }
}

# This is mandatory, user should supply
variable "security_group_ids"{
    type = list(string)
}


