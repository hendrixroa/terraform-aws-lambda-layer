resource "aws_lambda_layer_version" "main" {
  layer_name       = var.lambda_layer_name
  description      = var.description
  s3_bucket        = var.s3_bucket_id
  s3_key           = var.key_s3_bucket
  source_code_hash = data.archive_file.main.output_base64sha256

  compatible_runtimes = [var.lambda_runtime]
  depends_on = [
    aws_s3_bucket_object.main,
  ]
}
