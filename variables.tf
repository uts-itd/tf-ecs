variable "create_ecs" {
  description = "Do you want to create ecs cluster?"
  default     = true
  type        = bool
}

variable "cluster_name" {
  description = "name of cluster"
  type        = string
  default     = "github-testing"
}

variable "capacity_providers" {
  description = " list of one or more capacity providers to associate with the cluster"
  type        = list(string)
  default     = ["FARGATE"]
}
variable "default_capacity_provider_strategy" {
  description = "The capacity provider strategy to use by default for the cluster. Can be one or more."
  type        = list(map(any))
  default     = []
}

variable "tags" {
  type = map(string)
  default = {
    "owner" : "CET"
  }
}

variable "container_insights" {
  description = "Controls if ECS Cluster has container insights enabled"
  type        = bool
  default     = false
}

// ecs task_definition variables

variable "family" {
  type        = string
  description = ""
  default     = "github-testing-family"
}
