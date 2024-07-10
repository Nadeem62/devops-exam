provider "aws" {
  region  = "ap-south-1" # Don't change the region
}

# Add your S3 backend configuration here
resource "s3_buket" "467.devops.candidate.exam"{
  Region: "ap-south-1"
  Key: "Nadeem.Shaikh"
}
