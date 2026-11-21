<#
.SYNOPSIS
  Wi-Fi barqarorligini o'lchaydi: routergacha va internetgacha ping.
.EXAMPLE
  .\ping-test.ps1
  .\ping-test.ps1 -Router 192.168.1.1 -Count 30
#>
param(
    [string] $Router = '192.168.0.1',
    [string] $Internet = '8.8.8.8',
    [int] $Count = 20
)

function Test-PingStats([string]$Target) {
    $times = @(); $lost = 0
    for ($i = 0; $i -lt $Count; $i++) {
        $r = Test-Connection -ComputerName $Target -Count 1 -ErrorAction SilentlyContinue
        if ($r) { $times += $r.ResponseTime } else { $lost++ }
        Start-Sleep -Milliseconds 300
    }
    if ($times.Count -eq 0) { return [pscustomobject]@{ Manzil = $Target; Ortacha = '-'; Min = '-'; Max = '-'; Yoqotish = '100%' } }
    $m = $times | Measure-Object -Average -Minimum -Maximum
    [pscustomobject]@{
        Manzil   = $Target
        Ortacha  = '{0:N0} ms' -f $m.Average
        Min      = "$($m.Minimum) ms"
        Max      = "$($m.Maximum) ms"
        Yoqotish = '{0:P0}' -f ($lost / $Count)
    }
}

Write-Host "O'lchanmoqda ($Count ta so'rov)..." -ForegroundColor Cyan
$res = @(Test-PingStats $Router; Test-PingStats $Internet)
$res | Format-Table -AutoSize

$r = $res[0]
if ($r.Max -ne '-' -and [int]($r.Max -replace ' ms') -gt 50) {
    Write-Host "Routergacha ping notekis (max > 50 ms). Kanal yoki kenglikni o'zgartirib ko'ring: docs/kanallar.md" -ForegroundColor Yellow
} elseif ($r.Max -ne '-') {
    Write-Host "Routergacha aloqa barqaror." -ForegroundColor Green
}
