# Terraflops Terraform Module
 
### Module name

Insert module description

#### Example usage

```hcl-terraform
module "waf_v2_options_regex_pattern" {
  source = "git::https://github.com/TerraFlops/aws-waf-v2-regex-pattern-set?ref=v1.2"
  providers = {
    aws = aws.us_east_1
  }

  name = "options-regex-pattern"
  description = "Matches on the request method of OPTIONS"
  regular_expressions = [
    "OPTIONS"
  ]
  scope = "CLOUDFRONT"
}

```
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | A friendly description of the regular expression pattern set. | `string` | n/a | yes |
| name | A friendly name of the regular expression pattern set. | `string` | n/a | yes |
| regular\_expressions | One or more blocks of regular expression patterns that you want AWS WAF to search for, such as B[a@]dB[o0]t. See Regular Expression below for details. | `list(string)` | n/a | yes |
| scope | Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL. To work with CloudFront, you must also specify the region us-east-1 (N. Virginia) on the AWS provider. | `string` | `"CLOUDFRONT"` | no |
| tags | An array of key:value pairs to associate with the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | ARN of the Regex Pattern Set |
| id | ID of the Regex Pattern Set |
| name | Name of the Regex Pattern Set |

