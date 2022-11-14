$curUser = (Get-ChildItem Env:\USERNAME).Value
$curComp = (Get-ChildItem Env:\COMPUTERNAME).Value

function Prompt {
	Write-Host -NoNewLine $curUser -ForegroundColor Green
	Write-Host -NoNewLine "@" -ForegroundColor White

	$p = Get-Location
	Write-Host -NoNewLine "(" -ForegroundColor DarkGray
	Write-Host -NoNewLine $p -ForegroundColor Red
	Write-Host -NoNewLine ")" -ForegroundColor DarkGray
  	Write-Host -NoNewLine " >"
	return " "
}