###############################################################################
#This script imports the edited phone numbers from the Get-ADUser phone number 
#export script and imports the changes back into AD
###############################################################################

Import-Csv "\\ServerName\MyDoc$\UserName\My Documents\Documentation\AD phone numbers.csv" |
ForEach-Object {
Set-ADUser -Identity $_.samaccountname -Replace @{telephonenumber=$_.OfficePhone;mobile=$_.MobilePhone;info=$_.info}
}
