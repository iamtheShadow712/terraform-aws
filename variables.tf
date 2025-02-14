variable "aws_region" {
  default = "us-east-1"
}


variable "instance_count" {
  description = "Number of EC2 intance to be provisioned"
  type        = number
  default     = 1
}
