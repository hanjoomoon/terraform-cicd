# S3 버킷을 생성한다
resource "aws_s3_bucket" "for_tfstate" {
  bucket = "tf-cicd-louis-tfstate"
}

# S3 버킷의 버저닝 기능 활성화 선언한다.
resource "aws_s3_bucket_versioning" "tfstate" {
  bucket = aws_s3_bucket.for_tfstate.bucket

  versioning_configuration {
    status = "Enabled"
  }
}

# DynamoDB for terraform state lock
resource "aws_dynamodb_table" "terraform_state_lock" {
  name         = "terraform-lock"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
}