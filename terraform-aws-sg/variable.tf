variable "vpc_id" {
  type = string
  default = "default-vpc-id"
  description = "VPC ID"
}

variable "tags" {
  type = map(any)
  default = {
    Department = "Engineering"
  }
  description = "Common tags for identify the resource easily"
}
