resource "aws_s3_bucket_object" "main" {
  bucket = var.s3_bucket_id
  key    = var.key_s3_bucket
  source = data.archive_file.main.output_path
  etag   = data.archive_file.main.output_base64sha256

  depends_on = [
    data.archive_file.main,
    null_resource.main,
  ]
}