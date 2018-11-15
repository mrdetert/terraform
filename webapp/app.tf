resource "azurerm_app_service_plan" "theappplan" {
    name="${var.prefix}webappplan"
    location="${var.location}"
    resource_group_name="${azurerm_resource_group.thegroup.name}"
    #resource_group_name="${var.rg}"
    sku{
        tier="Standard"
        size="S1"
    }
}

resource "azurerm_app_service" "thewebapp" {
    name="${var.prefix}webapp"
    location="${var.location}"
    resource_group_name="${var.rg}"
    app_service_plan_id="${azurerm_app_service_plan.theappplan.id}"
}