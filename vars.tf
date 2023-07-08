variable "aws_region" {
  description = "Define what region the instance will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "AWS Instance type defines the hardware configuration of the machine."
  type        = string
  default     = "t2.medium"
}

variable "number_of_instances" {
  description = "Number of instances"
  type        = number
  default     = 2
}

variable "instance_ami" {
  description = "Supported and maintained image provided by AWS that provides the information required to launch an instance"
  type        = string
  default     = "ami-007855ac798b5175e"
}

variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "key_pair" {
  type    = string
  default = "my-ubuntu-22"
}

variable "vpc_id" {
  type    = string
  default = "vpc-085f32c7718ce50cc"
}

variable "public_subnet_id" {
  type    = string
  default = "subnet-0c3a486afa1290b0a"
}
