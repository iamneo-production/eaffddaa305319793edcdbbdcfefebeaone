terraform{
    required_providers {
      aws ={
          source= "hashicorp/aws"
      }
    }
}
provider "aws" {
    region = "ap-northeast-1"
    access_key ="AKIAUY2EY5R4BHPX7ZVG"
    secret_key = "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"
}
resource "aws_instance" "exam" {
    ami=""
    instance_type="t2.micro"
}
output "public_ip"{
    value = aws_instance.exam.public_ip
}
    
}