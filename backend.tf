terraform {
  backend "s3"{
  bucket = "remotebackend-with-anushadynamodb"
  key = "Modules/backend/terraform.tfstate"
  region = "ap-south-1"
  dynamodb_table = "remote-statelocking"
  encrypt = true
  }
}
