provider "aws" {
  profile = "default"
  region = var.ct_home_region
}

resource "aws_s3_account_public_access_block" "block_all_public" {
  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets  = true
}
