variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  default     = "terra"
  type        = string
}

variable "ami" {
  description = "The AMI to run in the cluster"
  default     = "ami-0d382e80be7ffdae5"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  default     = "t3.micro"
  type        = string
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  default     = 2
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  default     = 2
  type        = number
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default     = 80
  type        = number
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  default     = "terraform-db-jestemradek"
  type        = string
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
  default     = "terraform.tfstate"
  type        = string
}
