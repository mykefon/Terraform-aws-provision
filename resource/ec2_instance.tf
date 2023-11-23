resource "ec2_instance" "my-ec2-01" {
  ami = var.ami.default.id #specify the variable path 
  instance_type = "t2.micro"
  key_name = "mykeypair"
  monitoring = false
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-0000000"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
   