###############################################################################
#This script will pull all the phone numbers from the AD Domain and export
#them into a csv file in My Docs named, "AD phone numbers"
###############################################################################

Get-ADUser  -Filter * -Properties OfficePhone,MobilePhone,info |
select name,samaccountname,OfficePhone,MobilePhone,info |  
Sort-Object name |
Export-Csv "\\ServerName\MyDoc$\UserName\My Documents\Documentation\AD phone numbers.csv" -NoTypeInformation
