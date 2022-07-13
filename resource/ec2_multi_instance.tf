module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset(["one", "two", "three"])

  name = "instance-${each.key}"

  ami                    = "ami-00000000"
  instance_type          = "t2.micro"
  key_name               = "ssh-keypair"
  monitoring             = true
  vpc_security_group_ids = ["sg-0000000"]
  subnet_id              = "subnet-000000"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}