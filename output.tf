output "bucknet-name" {
  value = aws_s3_bucket.s3bucket.bucket
}

output "aws_cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.s3_distribution.id
}

output "aws_cloudfront_distribution_domain_name" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}

output "aws_cloudfront_origin_access_identity_id" {
  value = aws_cloudfront_origin_access_identity.origin_access_identity.id
}
