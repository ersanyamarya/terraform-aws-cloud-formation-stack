variable "bucket-name" {
  description = "name of the bucket to store the website content"
}
variable "logs_prefix" {
  description = "prefix for the logs files, that will be saved in the s3 bucket"
}


variable "Environment" {
  description = "Environment tag for all resources"
}


variable "comment" {
  description = "comment for the cloudfront distribution"
}

variable "price_class" {
  description = "price class for the cloudfront distribution"
}

variable "acm_certificate_arn" {
  description = "arn of the certificate from route53 to use for the cloudfront distribution"
}

variable "sub_domian_names" {
  description = "subdomains for the cloudfront distribution (array of strings) for public access"
}

variable "route53_zone_id" {
  description = "route53 zone id for the cloudfront distribution"
}
