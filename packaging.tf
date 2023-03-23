// Zip file to upload function lambda
data "archive_file" "main" {
  type        = "zip"
  source_dir  = "${path.module}/${var.code_location}"
  output_path = "${path.module}/.terraform/archive_files/${var.key_s3_bucket}"

  depends_on = [null_resource.main]
}

// Provisioner to install dependencies in lambda package before upload it.
resource "null_resource" "main" {

  triggers = {
    updated_at = timestamp()
  }

  provisioner "local-exec" {
    command = <<EOF
    yarn config set no-progress
    yarn
    mkdir -p nodejs
    cp -r node_modules nodejs/
    rm -r node_modules
    EOF

    working_dir = "${path.module}/${var.code_location}"
  }
}