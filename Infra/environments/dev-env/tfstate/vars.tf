variable "aws_region" {
  description = "AWS Region for Infra"
  default     = "ap-northeast-1"
}

variable "aws_profile" {
  description = "AWS Credentials Profile on your local machine"
  default     = "default"
}

variable "deployment_account" {
  description = "Deployment Environment"
  default     = "personal-account-ujjwal"
}
