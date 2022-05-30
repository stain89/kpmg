#
#
#
terraform {
  backend "s3" {
    region         = "us-east-1"
    bucket         = "bcg-gamma-terraform-states-management"
    dynamodb_table = "platform-terraform"
    # key            = Pattern: "<Account name>/<region name>/vpc/<vpc name>.tfstate"
  }
}