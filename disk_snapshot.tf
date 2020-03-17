resource "azurerm_managed_disk" "test_snapshot_teampass" {
  name = "TeamPassOS_disk_fromSnapshot"
  location = "North Europe"
  resource_group_name = "TeamPass_Resource_Group"
  storage_account_type = "Standard_LRS"
  create_option = "Copy"
  source_resource_id = "/subscriptions/8cd33402-0fb9-48dd-be5c-594c33028a19/resourceGroups/TeamPass_Resource_Group/providers/Microsoft.Compute/snapshots/Teampass_Snapshot"
  disk_size_gb = "30"

    tags = {
        environment =   var.tags_environment_instance
        component =     var.tags_component_instance
    }

}