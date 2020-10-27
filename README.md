Stop Azure VM with OrgID auth
=============================

            

This script allows you to stop an AzureVM. 


It uses OrgID auth instead of a self signed certificate from your VM (Which was apparently the old way of doing this)


This script is not dependent on any other custom power shell scripts.


Here is a blog I worte on this:


http://www.russellmccloy.com/2014/12/stop-azurevm-using-azure-automation.html


Please contact me if you need anything.


Also note, this script is very simple. In production scripts I would probably write it slightly differently. For example, I might loop through all my VMs in a particular cloud service and stop them all.


thanks


Russ


 




 




 


 






        
    
TechNet gallery is retiring! This script was migrated from TechNet script center to GitHub by Microsoft Azure Automation product group. All the Script Center fields like Rating, RatingCount and DownloadCount have been carried over to Github as-is for the migrated scripts only. Note : The Script Center fields will not be applicable for the new repositories created in Github & hence those fields will not show up for new Github repositories.
