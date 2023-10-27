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
    $curDir = (Convert-Path .)

    if ($curDir.Contains($HOME)) {
        $curDir = $curDir.Replace($HOME, "~")
    }

	Write-Host -NoNewLine $curUser -ForegroundColor Cyan
	Write-Host -NoNewLine "@" -ForegroundColor White
	
	Write-Host -NoNewLine "(" -ForegroundColor DarkGray
	Write-Host -NoNewLine $curDir -ForegroundColor DarkGreen
	Write-Host -NoNewLine ")" -ForegroundColor DarkGray

	$branch = Get-BranchName
	Write-Host -NoNewLine " (" -ForegroundColor DarkGray
	Write-Host -NoNewLine $branch -ForegroundColor Blue
	Write-Host -NoNewLine ")" -ForegroundColor DarkGray

  	Write-Host -NoNewLine " >"
	return " "
}
