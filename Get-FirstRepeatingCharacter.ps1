function Get-FirstRepeatingCharacter {
   [CmdletBinding()]
   param (
     [string]$string
   )

$string = Read-Host "Enter String"
$table = $string.ToLower().ToCharArray() | Group-Object -NoElement | where Count -gt 1
$table.GetEnumerator() | select -First 1 | select name
}
