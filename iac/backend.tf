# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "rstart-terraform-remote-state"
    key            = "rstart-app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "rstart-state-lock"
  }
}
