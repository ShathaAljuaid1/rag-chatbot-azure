resource "azurerm_postgresql_flexible_server" "postgres" {
  name                   = "rag-postgres-server"
  resource_group_name    = azurerm_resource_group.rg.name
  location               = azurerm_resource_group.rg.location

  administrator_login    = "pgadmin"
  administrator_password = var.db_admin_password

  version                = "16"
  sku_name               = "B_Standard_B1ms"
  storage_mb             = 32768
  
  zone = "2"

  backup_retention_days  = 7
}