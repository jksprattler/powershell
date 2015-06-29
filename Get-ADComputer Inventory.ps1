###############################################################################
#This script will pull all machine names, OS, OS version and other properties
#and export them into a csv file that you can save in your My Docs location
###############################################################################

Get-ADComputer -Filter * -Properties Name, operatingSystem, operatingSystemVersion |  
Export-Csv "\\ServerName\MyDoc$\UserName\My Documents\Documentation\Asset Inventory\Get-ADComputer.csv" -NoTypeInformation