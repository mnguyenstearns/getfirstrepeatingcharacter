function Get-FirstRepeatingCharacter {

   [CmdletBinding()]
   param (
     [string]$string
   )

$string.ToLower().ToCharArray() | Group-Object -NoElement | where Count -gt 1 | select -First 1 | select name

}

[string]$string = Read-Host "Enter String"
Get-FirstRepeatingCharacter $string