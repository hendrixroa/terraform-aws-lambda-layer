# Lambda Layer

Module prebuilt for automate the installing dependencies for function lambdas made in node.js

## Requirements

- Terraform version:  `0.13.+`
- yarn
- node.js version: 13+

### How to use

```hcl

module "layer" {
  source = "hendrixroa/lambda-layer/aws"

  lambda_layer_name = "LambdaNodejsLayer"
  s3_bucket_id      = aws_s3_bucket.mybucket.id
  key_s3_bucket     = "_layer.zip"
  code_location     = "./_layer/"
}
```

- See `_layer/package.json` to see which dependencies I have installed, feel free to add the dependencies that you need via PR. 
