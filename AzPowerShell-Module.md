# This step installs the AzPowerShell Module

## Region for ExecutionPolicy

- *The script in this region first gets the execution policy of the current PowerShell session.*
- *Then checks if it is set to Unrestricted.*
- *`If` it is set, it does nothing but writes a message to the screen.*
- *`Else` will set the execution policy to Unrestricted for the current session.*

---

## Region to Check if AzPowerShell Module is installed

- *First checks if the AzPowerShell module is installed*
- *`If` installed, it does nothing but writes a message to the screen.*
- *`Else` goes ahead to installs the module and writes a message to the screen.*
