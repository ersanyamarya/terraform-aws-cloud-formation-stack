# terraform-aws-cloudfront-stack

Terraform module to create a CloudFront distribution stack for any kind of static web application.
## Changelog
* Corrected the spellings for `sub_domain_names`. Please use `sub_domain_names` instead of `sub_domian_names` in your code.
## Available Features
* Creates a S3 bucket for the website static files.
* Creates AWS S3 bucket public access block to make the S3 bucket private.
* Creates a CloudFront distribution for the website.
* Create AWS Cloudfront Origin Access Identity (OAI) for the S3 bucket.
* Creates AWS S3 bucket policy to allow CloudFront to access the S3 bucket.
* Links route53 record to the CloudFront distribution.

## Usage

```hcl
provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
  shared_config_files      = ["~/.aws/config"]
  profile                  = "default"
}

module "cloudfront-stack" {
  source  = "ersanyamarya/cloudfront-stack/aws"
  version = "0.0.3"
  bucket-name = "example-website"
  Environment = "dev"
  comment     = "Example website"
  logs_prefix = "logs"
  #  One of PriceClass_All, PriceClass_200, PriceClass_100
  price_class = "PriceClass_100"
  # PUT THE ARN OF YOUR AWS CERTIFICATE MUST BE IN VIRGINIA REGION
  acm_certificate_arn = "arn:aws:acm:us-east-1:eeeewfdsfdsfdsf"
  route53_zone_id     = "Z08012192HWS2JY8G8M0P"
  sub_domain_names    = toset(["www.example.com","example.com"])
}


```