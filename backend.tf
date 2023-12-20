terraform {
  backend "s3"{
  bucket = "anusha-example-bucket"
  key = "modules/backend/terraform.tfstate"
  region = "eu-north-1"
  dynamodb_table = "remote-statelocking"
  encrypt = true
  }
}
