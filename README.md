# Using Attune to shutdown Azure Virtual Machine

This Blueprint is used for shutting down single or multiple Azure Virtual Machines.

An Azure Virtual Machines is the Azure infrastructure as a service (IaaS) used to deploy virtual machines, it's commonly shorted to VMs with nearly any VM server workload that you want.

They provide on-demand and scalable computing resources with usage-based pricing.

## Pre-Blueprint Attune setup

1. On the Inputs tab, create a Windows Node for the host you wish to run this Blueprint.
1. On the Inputs tab, create a Windows Credentials to connect to the host you wish to run this Blueprint.
1. On the Inputs tab, create a Text value to store the values below:
    - AzureUserName: This is the Username of the Azure Administrator (DataType: String).
    - AzurePassword: This is the Password of the Azure Administrator (DataType: String).
    - AzureVmNames: This holds an array of VM(s) name(s) in Azure (DataType: Array).

---

*AzureVmNames Syntax:*

```powershell
@('VMOne', 'VMTwo', 'VMThree')
```

---

## Blueprint Steps

1. Check and Install the Azure AzPowerShell Module
1. Shuts down the Azure Virtual Machine(s)
