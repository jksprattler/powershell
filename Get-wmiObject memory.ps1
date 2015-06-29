###############################################################################
#This script will display the physical memory in bits of all devices in AD
#Run the Get-ADComputer cmdlet for a complete list of machine names
#Export the names only into a text file for this script
#Add Export-Csv "\\ServerName\MyDoc$\UserName\My Documents\Documentation\Asset Inventory\ ...csv"
###############################################################################

Get-ADComputer -filter * |

 ForEach-Object {

                 if(Test-Connection -ComputerName $_.dnshostname @pingconfig)

                   { $computer += $_.dnshostname + "`r`n"} }

$computer = Get-Content C:\computers.txt

foreach($cn in $computer)

{

 if($cn -match $env:COMPUTERNAME)

    {

    Get-WmiObject -class win32_physicalmemory | select Pscomputername,capacity } 

  elseif($cn.Length -gt 0)

    {

    Get-WmiObject -class win32_physicalmemory -cn $cn |  select Pscomputername,capacity } }