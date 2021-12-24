Start-Transcript -Path C:\Temp\deployAppService.log

Write-Host "Creating App Service plan. Hold tight, this might take a few minutes..."
Write-Host "`n"
$customLocationId = $(az customlocation show --name "lucerne-cl" --resource-group $env:resourceGroup --query id -o tsv)
az appservice plan create --resource-group $env:resourceGroup --name LucerneFeedback --custom-location $customLocationId --per-site-scaling --is-linux --sku K1
