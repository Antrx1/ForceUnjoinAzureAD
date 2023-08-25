#Check Status
dsregcmd /status 

#Pick yes or np

$choice = Read-Host "Do you want remove AzureAD? (Type 'yes' or 'no')"

if ($choice -eq "yes") {
    Write-Host "You chose to proceed. Executing code..."
    dsregcmd /debug /leave 
} elseif ($choice -eq "no") {
    Write-Host "You chose not to proceed. Exiting script."
    Exit
} else {
    Write-Host "Invalid choice. Exiting script."
Exit
}

Write-Host "AzureAD was removed > check status by running command> dsregcmd /status "
