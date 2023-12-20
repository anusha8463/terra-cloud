terraform {
  backend "s3"{
  bucket = "remotebackend-with-dynamodb"
  key = "modules/backend/terraform.tfstate"
  region = "eu-north-1"
  dynamodb_table = "remote-statelocking"
  encrypt = true
  }
}
