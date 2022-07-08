variable "name" {
  description = "Name of the EFS"
}

variable "encrypted" {
  description = "Encrypt the EFS or not"
  type = bool
  default = false
}

variable "subnets" {
  description = "List of subnets to create the EFS mountpoint"
  type = list
}

variable "security_groups" {
  description = "List of security groups ID for the EFS"
  type = list
}

variable "tags" {
  description = "Tags for the certificate"
  type = map
  default = {}
}
