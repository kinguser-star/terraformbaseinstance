data "terraform_remote_state" "network_details" {
backend = "s3"
config = {
bucket = "pankaj123-bucket"
key = "pankajkey-network-state"
region = "us-east-1"
}
}

