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

variable "common_tags" {
  type = map
  default = {
    project = "expense"
    environment = "dev"
    terraform = "true"
  }
}

variable "zone_id" {
  default = "Z07106382R8OPNWZHVRIY"
}

variable "domain_name" {
  default = "daws81s.icu"
}