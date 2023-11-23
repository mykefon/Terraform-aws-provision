module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "ec2-instance"

  ami   = var.ami.default.id #specify the variable path 
  instance_type          = "t2.micro"     # free tier eligible 
  key_name               = "keypair.pem" #ssh key
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-0000000"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

resource "ec2_instance" "my-ec2-01" {
  ami = "ami-eto00h3n3s922"
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
   