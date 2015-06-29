###############################################################################
#This script can be used to clear AD user phone numbers
###############################################################################

Set-ADUser -Identity UserName -clear mobile,info