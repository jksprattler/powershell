###############################################################################
#This script will display the processor and associated machine name for every 
#device in AD
#Add Export-Csv "\\ServerName\MyDoc$\UserName\My Documents\Documentation\Asset Inventory\machine processors.csv"
###############################################################################

Import-Module ActiveDirectory

$pingConfig = @{

    "count" = 1

    "bufferSize" = 15

    "delay" = 1

    "EA" = 0 }

$computer = $cn = $null


 Get-ADComputer -filter * |

 ForEach-Object {

                 if(Test-Connection -ComputerName $_.dnshostname @pingconfig)

                   { $computer += $_.dnshostname + "`r`n"} }

$computer = $computer -split "`r`n"

$property = "systemname", "name"

foreach($cn in $computer)

{

 if($cn -match $env:COMPUTERNAME)

   {

   Get-WmiObject -class win32_processor -Property  $property |

   Select-Object -Property $property }

 elseif($cn.Length -gt 0)

  {

   Get-WmiObject -class win32_processor -Property $property -cn $cn |

   Select-Object -Property $property } } 