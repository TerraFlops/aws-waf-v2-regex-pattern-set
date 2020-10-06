variable "name" {
  type = string
  description = "A friendly name of the regular expression pattern set."
}

variable "description" {
  type = string
  description = "A friendly description of the regular expression pattern set."
}

variable "scope" {
  type = string
  description = "Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL. To work with CloudFront, you must also specify the region us-east-1 (N. Virginia) on the AWS provider."
  default = "CLOUDFRONT"
}

variable "tags" {
  type = map(string)
  description = ""
  default = {}
}

variable "regular_expressions" {
  type = list(string)
  description = "One or more blocks of regular expression patterns that you want AWS WAF to search for, such as B[a@]dB[o0]t. See Regular Expression below for details."
}
