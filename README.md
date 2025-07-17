# ai-terraform

To test within Azure you will need to enable CORS
az webapp cors add --resource-group rg-ai-terraform --name my3cloudfuncapp --allowed-origins 'https://portal.azure.com'