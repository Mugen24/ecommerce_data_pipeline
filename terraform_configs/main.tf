provider "aws" {
  region = "ap-southeast-2"
}


resource "aws_s3_bucket" "raw" {
  bucket = "rawbucket912324234"
  tags = {
    Name        = "raw bucket"
  }
}

