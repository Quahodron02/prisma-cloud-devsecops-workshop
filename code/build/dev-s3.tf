provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "89e47d92-1663-4166-b3fa-539d7ef23329"
    git_commit           = "d16ed8f3a4661e080824971bedb312cda480558f"
    git_file             = "code/build/dev-s3.tf"
    git_last_modified_at = "2024-09-12 22:47:48"
    git_last_modified_by = "103962859+Quahodron02@users.noreply.github.com"
    git_modifiers        = "103962859+Quahodron02"
    git_org              = "Quahodron02"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
