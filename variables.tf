variable "create_efs" {
  description = "Controls if EFS should be created"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of the EFS"
}

variable "encrypted" {
  description = "Encrypt the EFS or not"
  type        = bool
  default     = false
}

variable "subnets" {
  description = "List of subnets to create the EFS mountpoint"
  type        = list(any)
}

variable "security_groups" {
  description = "List of security groups ID for the EFS"
  type        = list(any)
}

variable "tags" {
  description = "Tags for the certificate"
  type        = map(any)
  default     = {}
}
