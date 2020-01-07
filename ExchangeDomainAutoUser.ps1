Add-PSSnapin Microsoft.Exchange.Management.PowerShell.SnapIn
Get-User -ResultSize unlimited -RecipientTypeDetails user| where {$_.userprincipalname -ne $null} | Enable-Mailbox