# Provider Block
provider "aws" {
    profile = "default"
    region = "sa-east-1"
}

# Resources Block
resource "aws_instance" "app_server" {
    ami = "ami-07c0cae188e21a093"
    instance_type = var.ec2_instance_type

    tags = {
        Name = var.instance_name
    }
}