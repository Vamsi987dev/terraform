variable "instance_types" {
    type = map(string)
    default = {
        mysql = "t2.micro"
        backend = "t2.micro"
        frontend = "t2.micro"
    }
}

variable "zone_id" {
  default = "Z07106382R8OPNWZHVRIY"
}

variable "domain_name" {
  default = "daws81s.icu"
}