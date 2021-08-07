## **AzPowerShell-Module**
> #### **Region for ExecutionPolicy**
> - *The script above first gets the execution policy of the current PowerShell session.*
> 
> - *Then checks if it is set to Unrestricted.*
> 
> - *`If` it is set, then skips and echos a message to the screen.*
>
> - *`Else` it sets the execution policy to Unrestricted.*
> ---
> #### **Region to Check if AzPowerShell Module is installed**
> 
> - *First checks if the AzPowerShell module is installed*
> - *`If` it is, then it checks if the Module is on `version "6.3.0"`*
> - *`If` it on that version it does nothing but echos a message*
> - *`Else` it echos a message*
> - *`If` the module is not installed it goes ahead and installs the module on `version "6.3.0"` and echos a message after that*
> ---
[![SERVERTRIBE](https://www.servertribe.com/wp-content/themes/mars/assets/images/attune_logo.svg)](https://www.servertribe.com/)
***&copy;2021 Powered by ServerTribe***