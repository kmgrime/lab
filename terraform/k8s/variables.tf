variable "app_name" {
  type        = string
  description = "k8sclusterlab"
  default     = "k8sclusterlab"
}

variable "resource_group_location" {
  type        = string
  description = "Location of the Resource Group"
  default     = "swedencentral"
}

variable "node_count" {
  type        = number
  description = "The initial quantity of nodes for the node pool."
  default     = 1
}
