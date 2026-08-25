# ============================================
# XDaniKnox Adblocker - Spotify Ad Blocker
# Version: 1.0
# ============================================

function Show-LoadingScreen {
    Clear-Host
    $logo = @"
    ╔═══════════════════════════════════════════════════════════════╗
    ║                                                               ║
    ║     ██╗  ██╗██████╗  █████╗ ███╗   ██╗██╗██╗  ██╗██╗  ██╗   ║
    ║     ╚██╗██╔╝██╔══██╗██╔══██╗████╗  ██║██║╚██╗██╔╝██║  ██║   ║
    ║      ╚███╔╝ ██║  ██║███████║██╔██╗ ██║██║ ╚███╔╝ ███████║   ║
    ║      ██╔██╗ ██║  ██║██╔══██║██║╚██╗██║██║ ██╔██╗ ██╔══██║   ║
    ║     ██╔╝ ██╗██████╔╝██║  ██║██║ ╚████║██║██╔╝ ██╗██║  ██║   ║
    ║     ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ║
    ║                                                               ║
    ║              ╔═══════════════════════════════╗               ║
    ║              ║    XDaniKnox Adblocker v1.0   ║               ║
    ║              ╚═══════════════════════════════╝               ║
    ╚═══════════════════════════════════════════════════════════════╝
"@
    Write-Host $logo -ForegroundColor Cyan
    Write-Host ""
    Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
    Write-Host "    ║  Spotify Ad Blocker & Optimizer                           ║" -ForegroundColor White
    Write-Host "    ║  Made by: XDaniKnox                                      ║" -ForegroundColor White
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "    Loading..." -ForegroundColor Yellow
    Write-Host ""
    
    for ($i = 0; $i -le 40; $i++) {
        $percent = [math]::Round(($i / 40) * 100)
        $bar = "█" * $i + "░" * (40 - $i)
        Write-Host "    [$bar] $percent%" -ForegroundColor Green -NoNewline
        Start-Sleep -Milliseconds 30
        Write-Host "`r" -NoNewline
    }
    Write-Host "    [$("█" * 40)] 100%" -ForegroundColor Green
    Write-Host ""
    Start-Sleep -Milliseconds 300
    
    $text = "    ╔════════════════════════════════════════════════════════════╗"
    $text2 = "    ║              ✦ MADE BY XDaniKnox ✦                        ║"
    $text3 = "    ╚════════════════════════════════════════════════════════════╝"
    Write-Host $text -ForegroundColor Magenta
    Write-Host $text2 -ForegroundColor Magenta
    Write-Host $text3 -ForegroundColor Magenta
    Write-Host ""
    Start-Sleep -Milliseconds 500
}

function Show-Menu {
    Clear-Host
    Write-Host ""
    Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
    Write-Host "    ║               XDaniKnox Adblocker                         ║" -ForegroundColor Cyan
    Write-Host "    ╠════════════════════════════════════════════════════════════╣" -ForegroundColor Cyan
    Write-Host "    ║                                                            ║" -ForegroundColor Cyan
    Write-Host "    ║     [1] 🔒 Block Ads                                      ║" -ForegroundColor Yellow
    Write-Host "    ║     [2] 🎙️ Block Podcasts                                ║" -ForegroundColor Yellow
    Write-Host "    ║     [3] ⭐ Activate Premium Mode                          ║" -ForegroundColor Yellow
    Write-Host "    ║     [4] 🚀 Activate All Features                         ║" -ForegroundColor Yellow
    Write-Host "    ║     [5] 🔄 Block Spotify Updates                         ║" -ForegroundColor Yellow
    Write-Host "    ║     [6] ❌ Exit                                          ║" -ForegroundColor Yellow
    Write-Host "    ║                                                            ║" -ForegroundColor Cyan
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Green
    Write-Host "    ║     👆 PRESS 1 TO BLOCK ADS!                             ║" -ForegroundColor Green
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Green
    Write-Host ""
}

# ============================================
# PARAMETERS (default values)
# ============================================
$premium = $false
$podcasts_off = $false
$adsections_off = $false
$canvashome_off = $false
$block_update_on = $false
$DisableStartup = $false

# ============================================
# LOADING SCREEN & MENU
# ============================================
Show-LoadingScreen

$choice = $null
do {
    Show-Menu
    $choice = Read-Host "    Choose an option (1-6)"
    
    switch ($choice) {
        "1" {
            Write-Host ""
            Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Green
            Write-Host "    ║  🔒 Blocking Ads...                                      ║" -ForegroundColor Green
            Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Green
            $podcasts_off = $true
            $adsections_off = $true
            $canvashome_off = $true
            break
        }
        "2" {
            Write-Host ""
            Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Yellow
            Write-Host "    ║  🎙️ Blocking Podcasts...                                 ║" -ForegroundColor Yellow
            Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Yellow
            $podcasts_off = $true
            break
        }
        "3" {
            Write-Host ""
            Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Magenta
            Write-Host "    ║  ⭐ Activating Premium Mode...                           ║" -ForegroundColor Magenta
            Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Magenta
            $premium = $true
            break
        }
        "4" {
            Write-Host ""
            Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
            Write-Host "    ║  🚀 Activating All Features...                           ║" -ForegroundColor Cyan
            Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
            $podcasts_off = $true
            $adsections_off = $true
            $canvashome_off = $true
            $block_update_on = $true
            $DisableStartup = $true
            break
        }
        "5" {
            Write-Host ""
            Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Yellow
            Write-Host "    ║  🔄 Blocking Spotify Updates...                          ║" -ForegroundColor Yellow
            Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Yellow
            $block_update_on = $true
            break
        }
        "6" {
            Write-Host ""
            Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Red
            Write-Host "    ║  ❌ Exiting...                                            ║" -ForegroundColor Red
            Write-Host "    ║  Thanks for using XDaniKnox Adblocker!                   ║" -ForegroundColor Red
            Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Red
            Start-Sleep -Seconds 2
            exit
        }
        default {
            Write-Host ""
            Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Red
            Write-Host "    ║  ❌ Invalid choice! Please choose 1-6.                   ║" -ForegroundColor Red
            Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Red
            Start-Sleep -Seconds 2
        }
    }
} while ($choice -notin "1","2","3","4","5","6")

Write-Host ""
Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "    ║  ⏳ Starting process...                                   ║" -ForegroundColor Cyan
Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Start-Sleep -Seconds 1
Clear-Host

# ============================================
# MAIN PROCESS - SPOTIFY MODIFICATION
# ============================================

Write-Host ""
Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "    ║  🔧 Stopping Spotify processes...                         ║" -ForegroundColor Cyan
Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""

# Kill Spotify
Get-Process -Name Spotify* -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
Start-Sleep -Seconds 2

# Spotify paths
$spotifyPath = "$env:APPDATA\Spotify"
$spotifyExe = "$spotifyPath\Spotify.exe"
$hostsPath = "$env:windir\System32\drivers\etc\hosts"

# ============================================
# BLOCK ADS (hosts file)
# ============================================
if ($adsections_off -or $podcasts_off) {
    Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Yellow
    Write-Host "    ║  🛡️ Blocking ad domains...                                ║" -ForegroundColor Yellow
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Yellow
    Write-Host ""

    $ads = @(
        "0.0.0.0 pubads.g.doubleclick.net",
        "0.0.0.0 securepubads.g.doubleclick.net",
        "0.0.0.0 spclient.wg.spotify.com",
        "0.0.0.0 ads-fa.spotify.com",
        "0.0.0.0 analytics.spotify.com"
    )

    # Backup
    Copy-Item $hostsPath "$hostsPath.bak" -Force -ErrorAction SilentlyContinue

    # Remove old entries
    $content = Get-Content $hostsPath -ErrorAction SilentlyContinue
    $newContent = @()
    $skip = $false
    foreach ($line in $content) {
        if ($line -match "# XDaniKnox Adblocker - Spotify") { $skip = $true }
        if ($skip -and $line -match "^0\.0\.0\.0") { continue }
        if ($skip -and $line -match "^#") { continue }
        if ($line -match "# XDaniKnox Adblocker - Spotify End") { $skip = $false; continue }
        if (-not $skip) { $newContent += $line }
    }

    # Add new entries
    $newContent += ""
    $newContent += "# XDaniKnox Adblocker - Spotify Ad Blocker"
    foreach ($ad in $ads) {
        $newContent += $ad
    }
    $newContent += "# XDaniKnox Adblocker - Spotify End"

    $newContent | Out-File $hostsPath -Encoding ASCII -Force
    Write-Host "    ✅ Ad domains blocked!" -ForegroundColor Green
    Write-Host ""
}

# ============================================
# BLOCK PODCASTS (prefs file)
# ============================================
if ($podcasts_off) {
    Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Yellow
    Write-Host "    ║  🎙️ Blocking podcasts...                                  ║" -ForegroundColor Yellow
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Yellow
    Write-Host ""

    $prefsPath = "$spotifyPath\prefs"
    if (Test-Path $prefsPath) {
        $prefs = Get-Content $prefsPath
        $prefs = $prefs | Where-Object { $_ -notmatch "podcasts" }
        $prefs += 'app.hidden-entities={"podcasts":true}'
        $prefs | Out-File $prefsPath -Encoding UTF8 -Force
        Write-Host "    ✅ Podcasts blocked!" -ForegroundColor Green
    }
    Write-Host ""
}

# ============================================
# PREMIUM MODE
# ============================================
if ($premium) {
    Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Magenta
    Write-Host "    ║  ⭐ Activating Premium Mode...                             ║" -ForegroundColor Magenta
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Magenta
    Write-Host ""
    
    $prefsPath = "$spotifyPath\prefs"
    if (Test-Path $prefsPath) {
        $prefs = Get-Content $prefsPath
        $prefs = $prefs | Where-Object { $_ -notmatch "product_state" }
        $prefs += 'product_state={"pairs":[{"key":"catalog","value":"premium"}]}'
        $prefs | Out-File $prefsPath -Encoding UTF8 -Force
        Write-Host "    ✅ Premium Mode activated!" -ForegroundColor Green
    }
    Write-Host ""
}

# ============================================
# BLOCK UPDATES
# ============================================
if ($block_update_on) {
    Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Yellow
    Write-Host "    ║  🔄 Blocking Spotify updates...                           ║" -ForegroundColor Yellow
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Yellow
    Write-Host ""

    $updatePath = "$env:LOCALAPPDATA\Spotify\Update"
    if (Test-Path $updatePath) {
        Remove-Item $updatePath -Recurse -Force -ErrorAction SilentlyContinue
    }
    New-Item -ItemType Directory -Path $updatePath -Force | Out-Null
    
    # Set read-only
    icacls $updatePath /deny Everyone:F /T /Q -ErrorAction SilentlyContinue
    Write-Host "    ✅ Updates blocked!" -ForegroundColor Green
    Write-Host ""
}

# ============================================
# DISABLE STARTUP
# ============================================
if ($DisableStartup) {
    Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Yellow
    Write-Host "    ║  ⏹️ Disabling Spotify startup...                           ║" -ForegroundColor Yellow
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Yellow
    Write-Host ""

    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "Spotify" -ErrorAction SilentlyContinue
    
    $prefsPath = "$spotifyPath\prefs"
    if (Test-Path $prefsPath) {
        $prefs = Get-Content $prefsPath
        $prefs = $prefs | Where-Object { $_ -notmatch "autostart" }
        $prefs += 'app.autostart-configured=true'
        $prefs += 'app.autostart-mode="off"'
        $prefs | Out-File $prefsPath -Encoding UTF8 -Force
    }
    Write-Host "    ✅ Startup disabled!" -ForegroundColor Green
    Write-Host ""
}

# ============================================
# FLUSH DNS CACHE
# ============================================
Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "    ║  🔄 Flushing DNS cache...                                  ║" -ForegroundColor Cyan
Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""
ipconfig /flushdns | Out-Null
Write-Host "    ✅ DNS cache flushed!" -ForegroundColor Green
Write-Host ""

# ============================================
# FINISH
# ============================================
Write-Host ""
Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Green
Write-Host "    ║  ✅ Successfully completed!                               ║" -ForegroundColor Green
Write-Host "    ║  Spotify ads have been blocked!                          ║" -ForegroundColor Green
Write-Host "    ║  Thanks for using XDaniKnox Adblocker!                  ║" -ForegroundColor Green
Write-Host "    ║  Restart Spotify for changes to take effect!            ║" -ForegroundColor Green
Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Green
Write-Host ""

Read-Host "    Press Enter to exit"
