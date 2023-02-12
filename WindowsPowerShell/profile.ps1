$curUser = (Get-ChildItem Env:\USERNAME).Value
$curComp = (Get-ChildItem Env:\COMPUTERNAME).Value

function Get-BranchName() {
    try {
        return git rev-parse --abbrev-ref HEAD
    } catch {
        # Newly initiated git repo
        "no branches yet"
    }
}

function Prompt {
	# User
	Write-Host -NoNewLine $curUser -ForegroundColor Green
	Write-Host -NoNewLine "@" -ForegroundColor White
	
	# Location
	$p = Get-Location
	Write-Host -NoNewLine "(" -ForegroundColor DarkGray
	Write-Host -NoNewLine $p -ForegroundColor Red
	Write-Host -NoNewLine ")" -ForegroundColor DarkGray

	# Branch
	$branch = Get-BranchName
	Write-Host -NoNewLine " [" -ForegroundColor DarkGray
	Write-Host -NoNewLine $branch -ForegroundColor Blue
	Write-Host -NoNewLine "]" -ForegroundColor DarkGray

  	Write-Host -NoNewLine " >"
	return " "
}
