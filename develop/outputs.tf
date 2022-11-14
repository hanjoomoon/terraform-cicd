
output "first_arn" {
  value       = aws_iam_user.myiam[0].arn
  description = "The ARN for the first user"
}

output "all_arns" {
  value       = aws_iam_user.myiam[*].arn
  description = "The ARNs for all users"
}

output "s3_bucket_arn" {
  value       = aws_s3_bucket.mys3bucket.arn
  description = "The ARN of the S3 bucket"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.mydynamodbtable.name
  description = "The name of the DynamoDB table"
}