terraform {
  backend "s3" {
    bucket = "aws-s3-amazon-project01"  # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"  
    region = "ap-south-1" 
  }
}
