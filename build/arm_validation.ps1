add-azaccount
Set-AzContext "MySubscription"

$resourceGroup = "asd"
$parameters = @{}
$parameters.Add("Prefix","jdemo999");
$parameters.Add("SecretMessage","Hello World");

Test-AzResourceGroupDeployment -ResourceGroupName $resourceGroup -TemplateFile .\azuredeploy.json -TemplateParameterObject $parameters
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroup -TemplateFile .\azuredeploy.json -TemplateParameterObject $parameters