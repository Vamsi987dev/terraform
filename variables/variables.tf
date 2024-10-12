variable "ami" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI ID of devops practice"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "tags" {
  type = map(any) #optional
  default = {
    Name        = "backend"
    project     = "expense"
    component   = "backend"
    environment = "Dev"
    Terraform   = "true"
  }
}

variable "sg_name" {
  type    = string
  default = "allow_sshh"
}

variable "sg_description" {
  type    = string
  default = "allow port number 22 for SSH access"
}

variable "from_port" {
  type    = number
  default = 22
}

variable "to_port" {
  type    = number
  default = 22
}

variable "protocol" {
  type    = string
  default = "tcp"
}

variable "ingress_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}