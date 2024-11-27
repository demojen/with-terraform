provider "awsaws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket         = "mybucket-him-sep6"
    key            = "terraform.tfstate"
    region         = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-0166fe664262f664c" # Example Amazon Linux AMI
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  tags = {
    Name = "github-1"
  }
  
}
