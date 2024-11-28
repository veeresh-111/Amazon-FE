terraform {
  backend "s3" {
    bucket = "aws-s3-amazon-project02"  # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"  
    region = "us-east-1" 
  }
}
