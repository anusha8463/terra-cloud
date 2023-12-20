terraform {
  backend s3{
    bucket = "duckdo"
    key = "remote.tfstate"
    region = "ap-south-1"
  }
}
