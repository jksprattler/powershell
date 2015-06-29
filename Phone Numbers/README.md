# Phone Numbers
This is a collection of PowerShell scripts I've written related to the phone # fields of Active Directory.

My previous employer had their associate's Direct Inward Dialing and Cell Phone numbers listed in 2 separate spreadsheets
and in 2 different locations on the network's Distributed File System. The Office Numbers with extensions were listed in Active Directory and accessible in the Contact Details of Microsoft Outlook. My manager assigned me with updating AD to reflect all of the employees phone numbers in one location. The intention for this was to display these details quickly and efficiently by clicking on a user's Contact Details in MS Outlook.

Essentially 3 different fields needed to include a phone number and not everyone used each field. Instead of manually editing the AD attributes of 150 users, I chose to make the formatting changes with these scripts that must be run in the following order:
<ol>
  <li>Get-ADUser phone number export.ps1
  <li>Edit your csv file to reflect the required changes to be imported back into AD
  <li>Set-ADUser phone numbers import.ps1
</ol>



