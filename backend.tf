terraform {
  backend "s3"{
  bucket = "anusha-example-bucket"
  key = "Modules/backend/terraform.tfstate"
  region = "eu-north-1"
  dynamodb_table = "remote-statelocking"
  encrypt = true
  }
}
