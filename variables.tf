variable "code_location" {
  description = "Folder code"
  default = "layer"
}

variable "s3_bucket_id" {
  description = "S3 bucket to save the lambda code"
}

variable "key_s3_bucket" {
  description = "key value of s3 object"
  default = "layer.zip"
}

variable "lambda_layer_name" {
  description = "Lambda layer name"
}

variable "lambda_runtime" {
  description = "Lambda runtime of function"
  default     = "nodejs10.x"
}

variable "description" {
  default = "Lambda layer packages to avoid reinstall dependencies in every deployment and save space"
}