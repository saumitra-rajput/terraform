# # 1 need a resource group
# resource "azurerm_resource_group "rg" {
#   name = "moon-terraform"
#   location = "East US"
# }
# # 2 virtual network
# resource "azurerm_virtual_network" "vnet" {
#   name = "moon-vnet-terraform"
#   address_space = ["10.0.0.0/16"]
#   location = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resourc_group.rg.name
#   }

# 3 subnet

resource "azurerm_subnet" "subnet" {
    name = "vnet-subnet1"
    resource_group_name = 
  
}

# 4 public ip

# 5 network interface card

# 6 linux vm