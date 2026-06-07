#Write-Output 'Hello World.'

$name = Read-Host -Prompt "Please enter your name"
Write-Host "Congratulations" -NoNewLine
Write-Host " $name!" -foregroundcolor Green -NoNewLine
Write-Host " You have written your first code with PowerShell!"
Write-Host '$PROFILE' -foregroundcolor Red