workflow MyStopAzureVM
{
	Param
    (   
        [Parameter(Mandatory=$true)]
        [String]
        $vmName,       

		[Parameter(Mandatory=$true)]
        [String]
        $cloudServiceName 
    )
    # Specify Azure Subscription Name
    $subName = 'YourSubscriptionNameHere'   
    
    #please enter your own automation user here. See this blog for help: http://www.russellmccloy.com/2014/12/stop-azurevm-using-azure-automation.html
    $cred = Get-AutomationPSCredential -Name "YouAutomationUser"
    
    Add-AzureAccount -Credential $cred
   
    Select-AzureSubscription -SubscriptionName $subName 

    $vm = Get-AzureVM -ServiceName $cloudServiceName -Name $vmName 
        
    Write-Output "VM NAME: $vm"
    Write-Output "vm.InstanceStatus: $vm.InstanceStatus"
    
    if ( $vm.InstanceStatus -eq 'ReadyRole' ) {
        Stop-AzureVM -ServiceName $vm.ServiceName -Name $vm.Name -Force    
    }
}