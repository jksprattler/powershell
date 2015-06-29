###############################################################################
#This script pulls all the users from AD and exports them to a csv file
###############################################################################

Get-ADUser -Filter * | 
select name,samaccountname |  
Sort-Object name |
Export-Csv "\\ServerName\MyDoc$\UserName\My Documents\Documentation\AD usernames.csv" -NoTypeInformation
