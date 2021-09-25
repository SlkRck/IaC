$username = Read-Host "What is the user's name?"
$admins = Get-AzureADDirectoryRoleMember -ObjectID 15460419-e35e-42ef-8905-5b1421896f13
$admins | where {$_.displayname -match "$username"}