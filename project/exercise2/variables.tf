variable "REGION" {
  type        = string
  description = "selecting a region"
  default     = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-090fa75af13c156b4"
    us-east-2 = "ami-051dfed8f67f095f5"
  }
}