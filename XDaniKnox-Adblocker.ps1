# ============================================
# XDaniKnox Adblocker - Spotify Reklámblokkoló
# Verzió: 1.0
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
    Write-Host "    ║  Spotify reklámblokkoló és optimalizáló eszköz             ║" -ForegroundColor White
    Write-Host "    ║  Készítette: XDaniKnox                                    ║" -ForegroundColor White
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "    Betöltés folyamatban..." -ForegroundColor Yellow
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
    Write-Host "    ║     [1] 🔒 Reklámok letiltása                             ║" -ForegroundColor Yellow
    Write-Host "    ║     [2] 🎙️ Podcastok letiltása                           ║" -ForegroundColor Yellow
    Write-Host "    ║     [3] ⭐ Premium mód aktiválása                        ║" -ForegroundColor Yellow
    Write-Host "    ║     [4] 🚀 Összes funkció aktiválása                    ║" -ForegroundColor Yellow
    Write-Host "    ║     [5] 🔄 Spotify frissítés blokkolása                 ║" -ForegroundColor Yellow
    Write-Host "    ║     [6] ❌ Kilépés                                      ║" -ForegroundColor Yellow
    Write-Host "    ║                                                            ║" -ForegroundColor Cyan
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Green
    Write-Host "    ║     👆 NYOMD MEG AZ 1-EST HOGY LETILTSD A REKLÁMOKAT!    ║" -ForegroundColor Green
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Green
    Write-Host ""
}

# ============================================
# PARAMÉTEREK BEÁLLÍTÁSA (alapértelmezett értékek)
# ============================================
$premium = $false
$podcasts_off = $false
$adsections_off = $false
$canvashome_off = $false
$block_update_on = $false
$DisableStartup = $false
$no_shortcut = $false
$start_spoti = $false

# ============================================
# BETÖLTŐKÉPERNYŐ ÉS MENÜ
# ============================================
Show-LoadingScreen

$choice = $null
do {
    Show-Menu
    $choice = Read-Host "    Válassz egy opciót (1-6)"
    
    switch ($choice) {
        "1" {
            Write-Host ""
            Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Green
            Write-Host "    ║  🔒 Reklámok letiltása folyamatban...                     ║" -ForegroundColor Green
            Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Green
            $podcasts_off = $true
            $adsections_off = $true
            $canvashome_off = $true
            break
        }
        "2" {
            Write-Host ""
            Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Yellow
            Write-Host "    ║  🎙️ Podcastok letiltása folyamatban...                   ║" -ForegroundColor Yellow
            Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Yellow
            $podcasts_off = $true
            break
        }
        "3" {
            Write-Host ""
            Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Magenta
            Write-Host "    ║  ⭐ Premium mód aktiválása...                             ║" -ForegroundColor Magenta
            Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Magenta
            $premium = $true
            break
        }
        "4" {
            Write-Host ""
            Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
            Write-Host "    ║  🚀 Összes funkció aktiválása...                         ║" -ForegroundColor Cyan
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
            Write-Host "    ║  🔄 Spotify frissítés blokkolása...                      ║" -ForegroundColor Yellow
            Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Yellow
            $block_update_on = $true
            break
        }
        "6" {
            Write-Host ""
            Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Red
            Write-Host "    ║  ❌ Kilépés...                                            ║" -ForegroundColor Red
            Write-Host "    ║  Köszönjük, hogy az XDaniKnox Adblockert használtad!     ║" -ForegroundColor Red
            Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Red
            Start-Sleep -Seconds 2
            exit
        }
        default {
            Write-Host ""
            Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Red
            Write-Host "    ║  ❌ Érvénytelen választás! Kérlek válassz 1-6 között.    ║" -ForegroundColor Red
            Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Red
            Start-Sleep -Seconds 2
        }
    }
} while ($choice -notin "1","2","3","4","5","6")

Write-Host ""
Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "    ║  ⏳ Folyamat indítása...                                  ║" -ForegroundColor Cyan
Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Start-Sleep -Seconds 1
Clear-Host

# ============================================
# FŐ FOLYAMAT - SPOTIFY MÓDOSÍTÁSA
# ============================================

Write-Host ""
Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "    ║  🔧 Spotify folyamatok leállítása...                      ║" -ForegroundColor Cyan
Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""

# Spotify leállítása
Get-Process -Name Spotify* -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
Start-Sleep -Seconds 2

# Spotify mappa
$spotifyPath = "$env:APPDATA\Spotify"
$spotifyExe = "$spotifyPath\Spotify.exe"
$hostsPath = "$env:windir\System32\drivers\etc\hosts"

# ============================================
# REKLÁMOK LETILTÁSA (hosts fájl)
# ============================================
if ($adsections_off -or $podcasts_off) {
    Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Yellow
    Write-Host "    ║  🛡️ Reklám domainek blokkolása...                         ║" -ForegroundColor Yellow
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Yellow
    Write-Host ""

    $ads = @(
        "0.0.0.0 pubads.g.doubleclick.net",
        "0.0.0.0 securepubads.g.doubleclick.net",
        "0.0.0.0 spclient.wg.spotify.com",
        "0.0.0.0 ads-fa.spotify.com",
        "0.0.0.0 analytics.spotify.com"
    )

    # Biztonsági másolat
    Copy-Item $hostsPath "$hostsPath.bak" -Force -ErrorAction SilentlyContinue

    # Régi bejegyzések eltávolítása (csak a Spotify-hoz tartozók)
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

    # Új bejegyzések hozzáadása
    $newContent += ""
    $newContent += "# XDaniKnox Adblocker - Spotify reklámblokkoló"
    foreach ($ad in $ads) {
        $newContent += $ad
    }
    $newContent += "# XDaniKnox Adblocker - Spotify End"

    $newContent | Out-File $hostsPath -Encoding ASCII -Force
    Write-Host "    ✅ Reklám domainek blokkolva!" -ForegroundColor Green
    Write-Host ""
}

# ============================================
# PODCASTOK LETILTÁSA (prefs fájl)
# ============================================
if ($podcasts_off) {
    Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Yellow
    Write-Host "    ║  🎙️ Podcastok letiltása...                                ║" -ForegroundColor Yellow
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Yellow
    Write-Host ""

    $prefsPath = "$spotifyPath\prefs"
    if (Test-Path $prefsPath) {
        $prefs = Get-Content $prefsPath
        $prefs = $prefs | Where-Object { $_ -notmatch "podcasts" }
        $prefs += 'app.hidden-entities={"podcasts":true}'
        $prefs | Out-File $prefsPath -Encoding UTF8 -Force
        Write-Host "    ✅ Podcastok letiltva!" -ForegroundColor Green
    }
    Write-Host ""
}

# ============================================
# PREMIUM MÓD
# ============================================
if ($premium) {
    Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Magenta
    Write-Host "    ║  ⭐ Premium mód aktiválása...                              ║" -ForegroundColor Magenta
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Magenta
    Write-Host ""
    
    $prefsPath = "$spotifyPath\prefs"
    if (Test-Path $prefsPath) {
        $prefs = Get-Content $prefsPath
        $prefs = $prefs | Where-Object { $_ -notmatch "product_state" }
        $prefs += 'product_state={"pairs":[{"key":"catalog","value":"premium"}]}'
        $prefs | Out-File $prefsPath -Encoding UTF8 -Force
        Write-Host "    ✅ Premium mód aktiválva!" -ForegroundColor Green
    }
    Write-Host ""
}

# ============================================
# FRISSÍTÉS BLOKKOLÁS
# ============================================
if ($block_update_on) {
    Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Yellow
    Write-Host "    ║  🔄 Spotify frissítés blokkolása...                       ║" -ForegroundColor Yellow
    Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Yellow
    Write-Host ""

    $updatePath = "$env:LOCALAPPDATA\Spotify\Update"
    if (Test-Path $updatePath) {
        Remove-Item $updatePath -Recurse -Force -ErrorAction SilentlyContinue
    }
    New-Item -ItemType Directory -Path $updatePath -Force | Out-Null
    
    # Írásvédelem beállítása
    icacls $updatePath /deny Everyone:F /T /Q -ErrorAction SilentlyContinue
    Write-Host "    ✅ Frissítés blokkolva!" -ForegroundColor Green
    Write-Host ""
}

# ============================================
# INDÍTÁS LETILTÁSA
# ============================================
if ($DisableStartup) {
    Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Yellow
    Write-Host "    ║  ⏹️ Spotify indítás letiltása...                          ║" -ForegroundColor Yellow
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
    Write-Host "    ✅ Indítás letiltva!" -ForegroundColor Green
    Write-Host ""
}

# ============================================
# DNS CACHE TÖRLÉS
# ============================================
Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "    ║  🔄 DNS cache törlése...                                   ║" -ForegroundColor Cyan
Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""
ipconfig /flushdns | Out-Null
Write-Host "    ✅ DNS cache törölve!" -ForegroundColor Green
Write-Host ""

# ============================================
# BEFEJEZÉS
# ============================================
Write-Host ""
Write-Host "    ╔════════════════════════════════════════════════════════════╗" -ForegroundColor Green
Write-Host "    ║  ✅ Sikeres befejezés!                                    ║" -ForegroundColor Green
Write-Host "    ║  A Spotify reklámok letiltva!                            ║" -ForegroundColor Green
Write-Host "    ║  Köszönjük, hogy az XDaniKnox Adblockert használtad!    ║" -ForegroundColor Green
Write-Host "    ║  Indítsd újra a Spotify-t a változásokhoz!              ║" -ForegroundColor Green
Write-Host "    ╚════════════════════════════════════════════════════════════╝" -ForegroundColor Green
Write-Host ""

Read-Host "    Nyomj Enter-t a kilépéshez"
