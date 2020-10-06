output "arn" {
  value = aws_wafv2_regex_pattern_set.regex_pattern_set.arn
  description = "ARN of the Regex Pattern Set"
}

output "id" {
  value = aws_wafv2_regex_pattern_set.regex_pattern_set.id
  description = "ID of the Regex Pattern Set"
}
output "name" {
  value = aws_wafv2_regex_pattern_set.regex_pattern_set.name
  description = "Name of the Regex Pattern Set"
}
