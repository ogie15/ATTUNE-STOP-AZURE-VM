#Region for ExecutionPolicy
# ===========================================================================
# Get Execution Policy of the current process
$Script:ProcessEP = Get-ExecutionPolicy -Scope Process

#Get the value of the Execution Policy and save it in the Variable
$Script:ValueProcessEP = ($Script:ProcessEP).value__

# Check if the Execution Policy of the process is set to Unrestricted
if ($Script:ValueProcessEP -eq 0) {

    # Write the message
    Write-Output "Execution Policy is already set to Unrestricted for the Process"
# Check if the Execution Policy of the process is already set
}else{

    # Set the ExecutionPolicy of the Process to Unrestricted
    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted -Force -Confirm:$false

    # Checks if the Execution Policy has been set
    if ((Get-ExecutionPolicy -Scope Process).value__ -eq 0) {

        # Write the message
        Write-Output "Execution Policy is now set to Unrestricted for the Process"
    }
}
# ===========================================================================
#EndRegion for ExecutionPolicy 




#Region Stop Azure VM
# ===========================================================================
# Import Module for Az PowerShell
Import-Module -Name Az



#Region assign variables
# ===========================================================================
# Save accesskey to this Variable
$Script:UserName = "{azureusername.value}"

# Save secretkey to this variable
$Script:PasswordString = "{azurepassword.value}"

# List of VM names
$Script:AzureVmNames = {azurevmnames.value}
# ===========================================================================
#EndRegion assign variables



#Regoin for Connection to Azure 
# ===========================================================================
# Set the password and convert it to secure string to the variable
$Script:Password = ConvertTo-SecureString $Script:PasswordString -AsPlainText -Force

# set the credentials to the variable
$Script:UserCredential = New-Object System.Management.Automation.PSCredential ($Script:UserName,$Script:Password)

# Connect using set credentials to Azure
Connect-AzAccount -Credential $Script:UserCredential
# ===========================================================================
#Regoin for Connection to Azure 



# Loop through the hash table for the Names of the VM
foreach ($item in $Script:AzureVmNames) {

    # Get the Azure VM
    $Script:AzVm = Get-AzVM -VMName ($item)

    # Write the message
    Write-Output "The Azure VM '$($item)' in is stoping....."

    # Stop the Azure VM
    Stop-AzVM -ResourceGroupName $Script:AzVm.ResourceGroupName -Name $Script:AzVm.Name -NoWait -Confirm:$false -Force
}
# ===========================================================================
#EndRegion stop Azure VM



#Region Disconnect the Azure session
Disconnect-AzAccount
#EndRegion Disconnect the Azure session