variable "name" {
  type = string
}

variable "retention_days" {
  type    = number
  default = 14
}

variable "subscription_lambda_arn" {
  type    = string
  default = null
}

variable "subscription_name" {
  type    = string
  default = "Lambda Subscription"
}

variable "subscription_filter" {
  type    = string
  default = ""
}

variable "apply_subscription_permission" {
  type    = bool
  default = true
}
