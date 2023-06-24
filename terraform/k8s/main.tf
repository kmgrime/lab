resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.app_name}-app"
  location = var.resource_group_location
}

resource "azurerm_kubernetes_cluster" "k8s" {
  name                = "k8s-cluster"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "labk8s"

  default_node_pool {
    name            = "default"
    node_count      = var.node_count
    vm_size         = "Standard_B2s"
    os_disk_size_gb = 32
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Dev"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.k8s.kube_config_raw

  sensitive = true
}
