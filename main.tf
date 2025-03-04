resource "aws_instance" "my_vm" {
ami = "ami-05b10e08d247fb927"
subnet_id = data.terraform_remote_state.network_details.outputs.my_subnet
instance_type = "t3.micro"
tags = {
Name = "pankajvm"
}
}

