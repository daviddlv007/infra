variable "instance_name" {
  default = "dev-server-2"
}

variable "instance_type" {
  default = "t2.micro"  # Capa gratuita
}

variable "ami_id" {
  description = "AMI Amazon Linux 2023 gratuita en us-east-1"
  default     = "ami-00ca32bbc84273381"
}

variable "key_name" {
  description = "Nombre del key pair de AWS"
  type        = string
}
