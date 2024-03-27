# main.tf


resource "azurerm_service_plan" "ASP" {
  name                         = ${module.naming-convention.short_resource.azurerm_service_plan}-${var.short_location}-${var.short_env}-${var.ait}-${var.short_name}
  resource_group_name          = var.azurerm_resource_group
  location                     = var.location
  os_type             		= "Linux"



#The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan.
  maximum_elastic_worker_count = var.maximum_elastic_worker_count

  sku {
    tier     = var.sku_tier
    size     = var.sku_size              
    name     = var.sku_name
  }

  tags             = local.tags
  
    
   lifecycle {
    ignore_changes = [
      tags["CreatedDate"],
      tags["Environment"],
      tags["AIT"],
      tags["CostCenter"],
      tags["RunID"],
      ]
  }
}

-------------------------------------------------------------------------------
service_plan_name: Specifies the name of the Azure Service Plan to be created.
location: Specifies the Azure region where the service plan will be deployed (e.g., "East US").
resource_group_name: Specifies the name of the Azure Resource Group where the service plan will be created.
sku_tier: Specifies the tier of the service plan SKU (e.g., "Standard").
sku_size: Specifies the size of the service plan SKU (e.g., "S1").
--------------------------------------------------------------------------------
