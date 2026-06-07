# Connect to an Azure Account
Connect-AzAccount

# Define variables for an Azure Virtual Machine
$vmName = 'YourVirtualMachine'
$resourceGroup = 'YourResourceGroup'

# Store credentials for an Azure VM
$adminCredential = Get-Credential -Message 'Enter a username and password for the VM administrator'

# Create a VM in Azure
New-AzVM -ResourceGroupName $resourceGroup -Name $vmName -Credential $adminCredential -Image Ubuntu2204