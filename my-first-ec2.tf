# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
  access_key = "AKIA3DJCSVI66E6DJRMJ"
  secret_key = "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"
}

resource "aws_instance" "webapp_alias_in_terraform" {
  ami           = "ami-035bf26fb18e75d1b"
  instance_type = "t2.micro"

  tags = {
    Name = "My-Webapp-EC2"
  }
}