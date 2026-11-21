variable "location" {
  default = "eastus"
}

variable "db_location" {
  description = "Region for PostgreSQL Flexible Server (use centralus/westus2 if eastus/eastus2 are capacity-restricted on your subscription)"
  default     = "centralus"
}

variable "prefix" {
  default = "shoplite"
}

variable "db_admin_user" {
  default = "shopadmin"
}

variable "db_admin_password" {
  type      = string
  sensitive = true
}