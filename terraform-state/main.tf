provider "aws" {
  region = "us-west-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-db-jestemradek2"

  versioning {
    enabled = true
  }
  /*
  lifecycle {
    prevent_destroy = true
  }
 */
}
