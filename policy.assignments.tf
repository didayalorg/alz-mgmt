resource "azurerm_management_group_policy_assignment" "azure_security_compute_baseline_windows" {
  depends_on           = [module.management_groups]
  name                 = "win-sec-baseline"
  display_name         = "Azure Security Compute Baseline Windows"
  description          = "Windows machines should meet requirements of the Azure compute security baseline"
  management_group_id  = "/providers/Microsoft.Management/managementGroups/HAL-Cloud"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/72650e9f-97bc-4b2a-ab5f-9781a9fcecbc"
  location             = var.starter_locations[0]

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_management_group_policy_assignment" "azure_security_compute_baseline_linux" {
  depends_on           = [module.management_groups]
  name                 = "linux-sec-baseline"
  display_name         = "Azure Security Compute Baseline Linux"
  description          = "Linux machines should meet requirements of the Azure compute security baseline"
  management_group_id  = "/providers/Microsoft.Management/managementGroups/HAL-Cloud"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/fc9b3da7-8347-4380-8e70-0a0361d8dedd"
  location             = var.starter_locations[0]

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_management_group_policy_assignment" "cis_azure_foundations_benchmark" {
  depends_on           = [module.management_groups]
  name                 = "cis_azure_foundations"
  display_name         = "CIS Microsoft Azure Foundations Benchmark"
  description          = "Apply the CIS Microsoft Azure Foundations Benchmark policy set"
  management_group_id  = "/providers/Microsoft.Management/managementGroups/HAL-Cloud"
  policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/06f19060-9e68-4070-92ca-f15cc126059e"
  location             = var.starter_locations[0]

  identity {
    type = "SystemAssigned"
  }
}