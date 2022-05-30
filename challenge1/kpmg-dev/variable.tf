#
#
#
variable "region" {
  type        = string
  description = "AWS region"

  validation {
    condition     = length(var.region) > 0
    error_message = "Empty region."
  }
}

variable "name" {
  type        = string
  description = "Product/Project name"

  validation {
    condition     = length(var.name) > 0
    error_message = "Empty name."
  }
}

variable "owner" {
  type        = string
  description = "Owner name"

  validation {
    condition     = length(var.owner) > 0
    error_message = "Empty name."
  }
}

variable "environment" {
  type        = string
  description = "Type of the environment. Can be `pre-prd` | `prd` | `sbx`."

  validation {
    condition     = contains(["pre-prd", "prd", "sbx"], var.environment)
    error_message = "Incorrect environment type. Allowed values: `pre-prd` | `prd` | `sbx`."
  }
}
