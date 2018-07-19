terraform {
  backend "s3" {
    bucket  = "terraformtest001"
    encrypt = "true"
    region  = "us-west-2"
    key     = "tf-instance01/tf-instance01.tfstate"
  }
}
