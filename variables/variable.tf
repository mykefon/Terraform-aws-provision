variable "create" {
  description = "Whether to create an instance"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name to be used on EC2 instance created"
  type        = string
  default     = "project_k8s"
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-052efd3df9dad4825"
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with an instance in a VPC"
  type        = bool
  default     = null
}

variable "availability_zone" {
  description = "AZ to start the instance in"
  type        = string
  default     = null
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  type        = string
  default     = null
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with"
  type        = list(string)
  default     = null
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
  default     = null
}

variable "monitoring" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled"
  type        = bool
  default     = false
}

variable "key_pair" {
  description = "key pair for ec2"
  type        = string
  default     = "learner_key"
}

variable "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 1 #here we're using it to create two private instances
}

variable "project_environment" {
  description = "project name and environment for private instances"
  type        = map(string)
  default = {
    project     = "private", # it works upon key value pair where project is for key and environment is value
    environment = "testing"  # you will find them under tag on aws console
  }
}
