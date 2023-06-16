terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "aws_python" { 
  ami           = "ami-0c65adc9a5c1b5d7c"
  instance_type = "t2.micro"
  key_name = "iac-alura"
/*   user_data = <<-EOF
                 #!/bin/bash
                 cd /home/ubuntu
                 echo "<h1>Feito com Terraform</h1>" > index.html
                 nohup busybox httpd -f -p 8080 & 
                 EOF    */
  tags = {
    Name = "Terraform Ansible Python"
  }
}