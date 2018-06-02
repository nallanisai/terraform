provider "aws" {
  region                  = "us-west-2"
  shared_credentials_file = "/root/aws/credetials"
  profile                 = "terraform"
}

resource "aws_instance" "centos" {
  ami = "ami-e924c789"
  instance_type = "t1.micro"
  tags {
    Name = "terraform-instance"
  }

}
