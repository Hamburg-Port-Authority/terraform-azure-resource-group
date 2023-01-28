variable "name" {
  type        = string
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

variable "location" {
  type        = string
  description = "he Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  default     = "westeurope"
}

variable "lock_name" {
  type        = string
  description = "Specifies the name of the Management Lock. Changing this forces a new resource to be created."
  default     = "delete lock on resource-group-level"
}

variable "lock_level" {
  type        = string
  description = "Specifies the Level to be used for this Lock. Possible values are CanNotDelete and ReadOnly. Changing this forces a new resource to be created."
  default     = "CanNotDelete"
}

variable "notes" {
  type        = string
  description = "Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created."
  default     = "Locked, if you want remove the resourcegroup or a resource in this group, you must delete the lock first"

}

variable "tags" {
  type        = map(string)
  description = "Defines the default tags.  Some tags like owner are enforced by Azure policies."
  default = {
    TF-Managed  = "true"
    TF-Worfklow = ""
    Maintainer  = ""
  }
}
