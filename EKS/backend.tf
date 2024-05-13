terraform {
  backend "s3" {
    bucket = "veeresh-mega-project-s3-bucket1"  # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"  
    region = "ap-south-1" 
  }
}
