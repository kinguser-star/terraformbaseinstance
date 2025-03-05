resource "aws_instance" "my_vm" {
ami = "ami-05b10e08d247fb927"
subnet_id = data.terraform_remote_state.network_details.outputs.my_subnet
key_name = data.terraform_remote_state.network_details.outputs.aws_key_pair
vpc_security_group_ids = [data.terraform_remote_state.network_details.outputs.my_sg]
instance_type = "t2.micro"
tags = {
Name = "pankajvm"
}
}

