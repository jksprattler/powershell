###############################################################################
#This script checks the last date a user's password was reset
###############################################################################

$userName = Read-Host 'Enter username'

Get-ADUser -identity $userName -properties passwordlastset

powershell -noexit