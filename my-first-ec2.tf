# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"

}

resource "aws_instance" "webapp_alias_in_terraform" {
  ami           = "ami-035bf26fb18e75d1b"
  instance_type = "t2.micro"

  tags = {
    Name = "My-Webapp-EC2"
  }
}