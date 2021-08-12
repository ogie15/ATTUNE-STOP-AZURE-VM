## **Stop-AzureVM**
> #### **Region for ExecutionPolicy**
> - *The script above first gets the execution policy of the current PowerShell session.*
> 
> - *Then checks if it is set to Unrestricted.*
> 
> - *`If` it is set, then skips and echos a message to the screen.*
>
> - *`Else` it sets the execution policy to Unrestricted.*
> ---
> #### **Region for Stop Azure VM**
> 
> - *First the AzPowerShell Module is imported to the current session.*
> - *Then the values below are set:*
>
> > | Variable Name | Description | Value |
> > | :----: | :----: | :---: |
> > | UserName | This is the Username of the Azure Administrator | {azureusername.value} |
> > | PasswordString | This is the Password of the Azure Administrator | {azurepassword.value} |
> > | AzureVmNames | This holds an array of VM(s) name(s) in Azure | {azurevmnames.value} |
> > > ---
> > > #### *Below is a table explaining how to create the variables on Attune with matching data types:*
> > > ---
> > > | Vaule in script | Value Location in Attune | Parameter location in Attune| Data Type | Example |
> > > | :----: | :---: | :---: | :---: | :---: |
> > > | {azureusername.value} | (value) Inputs->Text Vaules->Variable | (access) Inputs->Text Vaules->Name | String | admin@contoso.com |
> > > | {azurepassword.value} | (value) Inputs->Text Vaules->Variable | (secretkey) Inputs->Text Parameter->Name | String | P@$sw0rd | 
> > > | {azurevmnames.value} | (value) Inputs->Text Vaules->Variable | (hashvalue) Inputs->Text Parameter->Name | Hash Table | @('VMOne', 'VMTwo', 'VMThree') |
> > > > ---
> > > > The Array holds the value of the Azure VM names.
> > > > ##### *Array Syntax:* 
> > > > 
> > > > ```powershell
> > > > @('VMOne', 'VMTwo', 'VMThree')
> > > > ````
> > > > ---
> > > ---
> - *Next connection to Azure is done using the `Connect-AzAccount` CMDLET.*
> - *Next will be to loop through the values of the Azure VM Names using the `Stop-AzVM` CMDLET.*
> - *__NOTE__: The `Azure VM Names` parameter are gotten from the Array created in Attune.*
> - *Finally a CMDLET `Disconnect-AzAccount` is used to disconnect the Azure PowerShell session.*
> ---
[![SERVERTRIBE](https://www.servertribe.com/wp-content/themes/mars/assets/images/attune_logo.svg)](https://www.servertribe.com/)
***&copy;2021 Powered by ServerTribe***