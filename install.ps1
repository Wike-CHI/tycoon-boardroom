$ErrorActionPreference = "Stop"

$REPO = "Wike-CHI/tycoon-boardroom"
$SKILLS_DIR = "$env:USERPROFILE\.claude\skills"
$TMP_DIR = Join-Path $env:TEMP "tycoon-boardroom-install-$(Get-Random)"

trap { Remove-Item -Recurse -Force $TMP_DIR -ErrorAction SilentlyContinue }

Write-Host "==> Cloning $REPO ..."
New-Item -ItemType Directory -Force -Path $TMP_DIR | Out-Null
git clone --depth 1 "https://github.com/$REPO.git" "$TMP_DIR\repo" 2>$null

Write-Host "==> Installing skills to $SKILLS_DIR ..."
New-Item -ItemType Directory -Force -Path $SKILLS_DIR | Out-Null

Get-ChildItem "$TMP_DIR\repo\skills" -Directory | ForEach-Object {
    $name = $_.Name
    Write-Host "    -> $name"
    $dest = Join-Path $SKILLS_DIR $name
    if (Test-Path $dest) { Remove-Item -Recurse -Force $dest }
    Copy-Item -Recurse $_.FullName $dest
}

Write-Host ""
Write-Host "Installed skills:" -ForegroundColor Green
Get-ChildItem $SKILLS_DIR -Directory | ForEach-Object {
    if (Test-Path (Join-Path $_.FullName "SKILL.md")) {
        Write-Host "    /$($_.Name)"
    }
}

Write-Host ""
Write-Host "Run /tycoon-boardroom in Claude Code to start."

Remove-Item -Recurse -Force $TMP_DIR -ErrorAction SilentlyContinue
