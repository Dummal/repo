variable "aft_lambda_execution_role_name" {
  description = "Name of the IAM role for AFT Lambda functions to execute."
  type        = string
}

variable "aft_lambda_execution_role_policy" {
  description = "Policy to attach to the AFT Lambda execution role."
  type        = string
  default     = "AWSLambdaBasicExecutionRole"
}

variable "aft_account_provisioning_role_name" {
  description = "Name of the IAM role for AFT account provisioning operations."
  type        = string
}

variable "aft_account_provisioning_policy_name" {
  description = "Name of the custom policy for AFT account provisioning."
  type        = string
  default     = "aft-account-provisioning-policy"
}

variable "aft_account_provisioning_policy_actions" {
  description = "List of actions allowed by the AFT account provisioning policy."
  type        = list(string)
  default     = ["organizations:CreateAccount", "organizations:ListAccounts", "organizations:MoveAccount", "iam:CreateServiceLinkedRole"]
}

variable "aft_admin_role_name" {
  description = "Name of the IAM Admin role for managing AFT."
  type        = string
}

variable "aft_admin_role_policy" {
  description = "Policy to attach to the AFT Admin role."
  type        = string
  default     = "AdministratorAccess"
}

variable "aft_admin_role_mfa_required" {
  description = "Indicates if MFA is required for the AFT Admin role."
  type        = bool
  default     = true
}

variable "aft_admin_role_trusted_account_id" {
  description = "Account ID of the master account allowed to assume the AFT Admin role."
  type        = string
}

variable "iam_resource_tags" {
  description = "Tags to attach to all IAM resources for identification."
  type        = map(string)
  default     = {
    Purpose   = "AFT"
    ManagedBy = "Terraform"
  }
}

variable "output_aft_execution_role_arn" {
  description = "Output the ARN of the AFT Lambda execution role."
  type        = bool
  default     = true
}

variable "output_aft_account_provisioning_role_arn" {
  description = "Output the ARN of the AFT account provisioning role."
  type        = bool
  default     = true
}

variable "output_aft_admin_role_arn" {
  description = "Output the ARN of the AFT Admin role."
  type        = bool
  default     = true
}