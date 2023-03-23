output "arn" {
  description = "Layer ARN to attach to the lambda functions"
  value = aws_lambda_layer_version.main.arn
}