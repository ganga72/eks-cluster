variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "my-eks-cluster"
}

variable "vpc_id" {
  description = "VPC ID where EKS will be deployed"
  type        = string
  default     = ""
}

variable "subnet_ids" {
  description = "List of subnet IDs (in us-east-1a and us-east-1b)"
  type        = list(string)
  default     = []
}

variable "eks_role_arn" {
  description = "IAM role ARN with full access to EKS (if provided, skip creation)"
  type        = string
  default     = ""
}

variable "node_instance_types" {
  description = "List of EC2 instance types for worker nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "tags" {
  description = "Tags to apply to AWS resources"
  type        = map(string)
  default     = {
    Environment = "dev"
  }
}
