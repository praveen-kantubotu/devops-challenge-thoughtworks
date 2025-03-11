# Setup our aws provider
variable "region" {
  default = "eu-west-1"  # make it as a variable so no need to modify when to deploy to multiple regions
}
provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    region = "eu-west-1"
    key = "base/terraform.tfstate"  # add dynamodb for statelocking using the table
  }
}
