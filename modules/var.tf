variable "yo"{
  type="string"
  default="qewqwe"
  description="Yo Val:"
}

variable "appid"{}
variable "password"{}
variable "sub_id"{}
variable "tenant"{}
variable "rg"{}
variable "location"{}
variable "sec_group_name"{}

output "appid"{
  value="${var.appid}"
}