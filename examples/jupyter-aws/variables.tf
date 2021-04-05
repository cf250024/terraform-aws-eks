variable "region" {
  default = "us-west-2"
}

variable "profile" {
  default = "default"
}

variable "cluster_name" {
  default = "jupyter"
}

variable "vpc_name" {
  default = "Sandbox VPC"
}

variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = list(string)
  default = [ ]
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
  ]
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
  ]
}

variable "worker_ami_owner_id" {
  description = "The ID of the owner for the AMI to use for the AWS EKS workers. Valid values are an AWS account ID, 'self' (the current account), or an AWS owner alias (e.g. 'amazon', 'aws-marketplace', 'microsoft')."
  type        = string
  default     = "amazon"
}

variable "worker_ami_owner_id_windows" {
  description = "The ID of the owner for the AMI to use for the AWS EKS Windows workers. Valid values are an AWS account ID, 'self' (the current account), or an AWS owner alias (e.g. 'amazon', 'aws-marketplace', 'microsoft')."
  type        = string
  default     = "amazon"
}
