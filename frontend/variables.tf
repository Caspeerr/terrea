variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "frontend_bucket_name" {
  description = "Globally unique S3 bucket name for the React static files"
  type        = string
  default     = "sambrid-frontend-bucket"
}

variable "price_class" {
  description = "CloudFront price class — PriceClass_100 covers NA/EU, cheapest option"
  type        = string
  default     = "PriceClass_100"
}

variable "alb_name" {
  description = "Name of the shared platform ALB (stable — doesn't change on recreation)"
  type        = string
  default     = "concproject-alb"
}