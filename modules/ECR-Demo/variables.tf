# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables must be set when using this module.
# ---------------------------------------------------------------------------------------------------------------------

variable "name" {
  type        = string
  description = "(Required) Name of the repository."
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These variables have defaults, but may be overridden.
# -------------------------------------------------------------------------------------------------------------------


variable "immutable" {
  type        = bool
  description = "(Optional) You can configure a repository to be immutable to prevent image tags from being overwritten. Defaults to false"
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "(Optional) A mapping of tags to assign to the resource."

  default = {}
}

variable "scan_on_push" {
  type        = bool
  description = "(Optional) Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false). Defaults to true"
  default     = true
}
variable "policy" {
  description = "Manages the ECR repository policy"
  type        = string
  default     = null
}
