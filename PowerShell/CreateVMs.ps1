# https://learn.microsoft.com/en-us/training/modules/automate-azure-tasks-with-powershell/7-create-resource-using-script
# Simon Norris 2025

# RUN: 
# .\CreateVMs.ps1 -ResourceGroupName <resource-group-name>
# OPTIONAL PARAMETERS:
#   -Name
#   -Location

#   Using this script, you can efficiently create multiple VMs in different resource groups, 
#   automating repetitive tasks and ensuring consistency across your Azure environment.

param (
    [string[]]$Name = ('web','app','sql'),
    [string]$ResourceGroupName,
    [string]$Location = 'eastus'
)

$adminCredential = Get-Credential

foreach ($vm in $Name) {
    $azVmParams = @{
        ResourceGroupName   = $ResourceGroupName
        Name                = $vm
        Credential          = $adminCredential
        Location            = $Location
        Image               = 'Canonical:0001-com-ubuntu-server-jammy:22_04-lts:latest'
        OpenPorts           = 22
        PublicIpAddressName = $vm
    }
    New-AzVM @azVmParams
}