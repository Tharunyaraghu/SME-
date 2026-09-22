# SME SAGE - Push to GitHub Helper Script
$git = "$PSScriptRoot\.bin\mingit\cmd\git.exe"

Write-Host "=========================================" -ForegroundColor Cyan
Write-Host " SME SAGE - Push to GitHub" -ForegroundColor Cyan
Write-Host " Target: https://github.com/Tharunyaraghu/SME-.git" -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan

# Check if origin is set
& $git remote -v

Write-Host "`nAttempting to push to 'main'..." -ForegroundColor Yellow
& $git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`nSUCCESS: Code pushed to GitHub successfully!" -ForegroundColor Green
} else {
    Write-Host "`nPush failed. If prompted for authentication, you can use a GitHub Personal Access Token (PAT)." -ForegroundColor Red
    Write-Host "Generate token: https://github.com/settings/tokens (select 'repo' scope)" -ForegroundColor Yellow
}
