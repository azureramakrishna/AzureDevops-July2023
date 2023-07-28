# Login to Azure subscription
#Login-AzAccount -SubscriptionId 6e4924ab-b00c-468f-ae01-e5d33e8786f8 -TenantId 459865f1-a8aa-450a-baec-8b47a9e5c904

# Create a new resource group
#New-AzResourceGroup -Name 'ARMTemplates-group' -Location 'East US'

# Deploy the templates
New-AzResourceGroupDeployment -ResourceGroupName 'ARMTemplates-group' -TemplateFile .\template.json -TemplateParameterFile .\parameters.json -Verbose