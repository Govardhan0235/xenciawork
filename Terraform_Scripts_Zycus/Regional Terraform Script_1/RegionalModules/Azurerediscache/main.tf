
resource "azurerm_redis_cache" "redis" {
  name                = var.Redis_cache
  location            = var.location
  resource_group_name = var.resource_group_name
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku_name
  enable_non_ssl_port = var.enable_non_ssl_port
  minimum_tls_version = var.minimum_tls_version
  public_network_access_enabled  = var.public_network_access_enabled
  redis_version = var.redis_version
  tags = {
    Environment = var.environment
  }
}