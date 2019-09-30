provider "aws" {
    access_key  =  "AKIAYWDVSQPMRQDSCDE2" 
    secret_key  =   "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"
    region      =   "us-east-1"
}

resource "aws_instance" "parry_ec2" {
    ami         =   "ami-00eb20669e0990cb4"
    instance_type   =   "t2.micro"
    key_name    =   "<KeyName>"
    subnet_id   =   "subnet-01fad6adc8621c276"
    vpc_security_group_ids  =  [
        "sg-0f7e167af9253b406"
    ] 
    tags        =   {
        Name =    "Terraform"
        Purpose   =   "Test"
    }  
    associate_public_ip_address = true 
}


