# PI.ps1
$PI = 3.14
# Prints Here is $PI and its value is 3.14
# When you use double quotation marks variables in strings are interpolated.
# Single quotation marks specify literals; what you write is what you get.
#  The back tick (`) is an escape char on the first instance of $PI. 
#  In the second instance, the value is interpolated and is written out.
Write-Host "Here is `$PI and its value is $PI"
# Prints An expression 4.14
#  $() construct can contain an expression within double quotes
Write-Host "An expression $($PI + 1)"
