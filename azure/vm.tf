resource "azurerm_virtual_network" "mynet" {
    name="myvnet"
    address_space=["10.0.0.0/16"]
    location="${var.location}"
    resource_group_name="${azurerm_resource_group.thegroup.name}"
    tags{
        environment="Testing"
    }
}

resource "azurerm_subnet" "mysubnet" {
    name="mysubnet"
    resource_group_name="${azurerm_resource_group.thegroup.name}"
    virtual_network_name="${azurerm_virtual_network.mynet.name}"
    address_prefix="10.0.1.0/24"
}

resource "azurerm_public_ip" "myip" {
    name="table5jdpubip"
    location="${var.location}"
    resource_group_name="${azurerm_resource_group.thegroup.name}"
    public_ip_address_allocation="dynamic"
    tags{
        environment="Testing"
    }
}

# resource "azurerm_virtual_machine" "myvm" {
#     name="table5jdtfvm"
#     location="${var.location}"
#     resource_group_name="${azurerm_resource_group.thegroup.name}"
#     network_interface_ids=["${name}"]
# }