terraform {
  required_providers { //this is plugin
    aws = {
      source  = "hashicorp/aws" //location where plugin is located
      version = "~> 3.27"       // best practice is to use version (optional), ~
    }
  }
}
provider "aws" {      //providing details about plugin
  profile = "default" // profile changes if there are multiple aws account
  region  = "us-east-1"
}


resource "aws_instance" "appserver" { //Resouce "resourcetype" "resourcename"
  ami = "ami-0aeeebd8d2ab47354"                //Amazon Machine Image. To get ami's Login to your EC2 dashboard > Under Images on right side,
  //select AMI's > chnage the options to Public Images from Owned by me and select the image name, here we use Ubuntu
  instance_type = var.instance_type //Select Instance type from EC2 dashboard and select the typ, here we use t2.micro
  tags = {
    #Name = "app_server" //ApplicationName, OwnerName are other tags we can define.
    Name = var.instance_name
  }
}

