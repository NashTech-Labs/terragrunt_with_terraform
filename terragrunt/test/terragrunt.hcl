#path - /terragrunt-ec2/dev/terragrunt.hcl

terraform {
  source = "tfr:///terraform-aws-modules/ec2-instance/aws?version=4.0.0"
}
#path - /terragrunt-ec2/dev/terragrunt.hcl

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
  provider "aws" {
    profile = "default"
    region  = "eu-central-1"
    access_key = "AKIAUBSZWKNXWKTFVKS4"
    secret_key = "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"
  }
EOF
}
#path - /terragrunt-ec2/dev/terragrunt.hcl

inputs = {
  ami           = "ami-00c90dbdc12232b58"
  tags = {
    Name = "Terragrunt Tutorial: EC2"
  }
}
Footer
