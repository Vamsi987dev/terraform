variable "ami" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
}