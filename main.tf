#normal
# resource "aws_instance" "terraform_ec2" {
#   ami                         = "ami-0e53db6fd757e38c7" # us-west-2
#   instance_type               = "t2.micro"
#   key_name                    = "key"
#   subnet_id                   = "subnet-0001038c62425190d"
#   vpc_security_group_ids      = ["sg-0e8e3606f4f665eb1"]
#   associate_public_ip_address = true
#   tags = {
#     Name = "terraform_ec2"
#   }
# }

#with variable

resource "aws_instance" "test_ec2" {
  ami                         = var.myami # us-west-2
  instance_type               = var.myec2type
  key_name                    = var.mykey
  subnet_id                   = var.mysubnet
  vpc_security_group_ids      = var.mysg
  associate_public_ip_address = true

  tags = {
    Name = "test_ec2"
  }
}

#for Output
output "ec2_pub_ip" {
  value = aws_instance.test_ec2.public_ip
}
output "ec2_id" {
  value = aws_instance.test_ec2.id
}
output "ec2_private_ip" {
  value = aws_instance.test_ec2.private_ip
}