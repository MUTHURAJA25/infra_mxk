terraform {
  backend "s3" {
    bucket         = "jenkins-tf-state-mxk"
    key            = "infra/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
