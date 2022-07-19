variable "instance_type" {
  type        = string
  description = "This is a size of EC2"
  default     = "t2.micro"
}
variable "key_name" {
  type        = string
  description = "This is my Public Key"
  default     = "control-key"
}
variable "env" {
  type        = string
  description = "this variable represents environment"
  default     = "dev"
}
variable  "ingress_ports" {
  type = list(string)
  description = "This is list of ports"
  default = [ "22", "80", "443" ]
}
