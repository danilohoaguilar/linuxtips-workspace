variable "instance_type" {
  type        = string
  description = "EC2 instance type for the web server"
  default     = "t2.micro"
}

variable "name" {
  type        = string
  description = "Nome do ambiente"
}