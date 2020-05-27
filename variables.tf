########################################
# General Vars
########################################

variable "name" {
  description = "Moniker to apply to all resources in the module"
  type        = string
}

variable "tags" {
  default     = {}
  description = "User-Defined tags"
  type        = map(string)
}

########################################
# Notification ARNs
########################################

variable "custom_action_notification_arn" {
  default     = null
  description = "Notification ARN to send custom actions to (leave blank if not using custom actions)"
  type        = string
}

variable "imported_finding_notification_arn" {
  default     = null
  description = "Notification ARN to send imported findings to (leave blank if not using custom actions)"
  type        = string
}