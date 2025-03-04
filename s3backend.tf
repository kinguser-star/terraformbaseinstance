terraform {
backend "s3" {
bucket = "pankaj123-bucket"
key = "pankajkey-instance-state"
region = "us-east-1"
}
}

