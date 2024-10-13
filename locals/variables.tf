variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]

}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
# variable "zone_id" {
#   default = "Z07106382R8OPNWZHVRIY"
# }

# variable "domain_name" {
#   default = "daws81s.icu"
# }