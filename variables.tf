variable "aws_account_id" {
  default = "123456789012"
}

variable "region" {
  default = "eu-west-1"
}

variable "access_key" {
  default = ""
}

variable "secret_key" {
  default = ""
}

variable "cluster_identifier" {
  default = "aurora-cluster-demo"
}

variable "engine" {
  type        = string
  default     = "aurora-mysql"
  description = "Aurora database engine type, currently aurora, aurora-mysql or aurora-postgresql"
}

variable "engine_version" {
  type        = string
  default     = "5.7.12"
  description = "Aurora database engine version."
}

variable "availability_zones" {
  default = ["eu-west-1a", "eu-west-1b", "eu-west-1b"]
}

variable "master_username" {
  default = ""
}

variable "master_password" {
  default = ""
}

variable "instance_class" {
  default = "db.t2.small"
}

variable "backup_retention_period" {
  default = 30
}

variable "preferred_backup_window" {
  default = "04:00-06:00"
}

variable "preferred_maintenance_window" {
  type        = string
  default     = "sun:02:00-sun:03:00"
  description = "When to perform DB maintenance"
}
