
variable "ami_id" {
    type = string
    #default = "ami-09c813fb71547fc4f"   #if its is uncommented(not provided) then it will check in user module(ec2-module-demo)
}

variable "instances" {
    #Though you are overriding this instances variable in child module with map (mysql,frontend,backend), but here as validateion block is used, it requires min one value in this configuration for checks.
    default = "t3.micro"
    validation {
        condition = contains(["t3.micro", "t3.medium", "t3.small"], var.instances)
        error_message = "instance_type should only be (t3.micro,t3.medium,t3.nano)"
    }
}

variable "security_group_id" {
    type = list(string)
    #default = ["sg-0d91387712ba38962"] #if its is commented(not provided) then it will check in user module(ec2-module-demo)
    
}

