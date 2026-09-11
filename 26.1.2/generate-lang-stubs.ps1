param(
    [string]$ModsDir = "C:\Users\haruk\AppData\Roaming\PrismLauncher\instances\All the Mods 11 - ATM11\minecraft\mods",
    [string]$PackDir = $PSScriptRoot
)

# Scans every mod jar in the ATM11 mods folder, reads META-INF/neoforge.mods.toml and
# creates an empty assets/<modid>/lang/ja_jp.json stub for each mod id that has none.
# Existing files are never overwritten, so it is safe to re-run after adding translations.

Add-Type -AssemblyName System.IO.Compression.FileSystem

$langRoot = Join-Path $PackDir "assets"
New-Item -ItemType Directory -Path $langRoot -Force | Out-Null

$ids = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::Ordinal)

foreach ($jar in Get-ChildItem -Path $ModsDir -Filter *.jar -File) {
    try {
        $zip = [System.IO.Compression.ZipFile]::OpenRead($jar.FullName)
        try {
            foreach ($entryName in @("META-INF/neoforge.mods.toml", "META-INF/mods.toml")) {
                $entry = $zip.GetEntry($entryName)
                if (-not $entry) { continue }
                $reader = New-Object System.IO.StreamReader($entry.Open(), [System.Text.Encoding]::UTF8)
                $text = $reader.ReadToEnd()
                $reader.Close()
                foreach ($m in [regex]::Matches($text, '(?m)^\s*modId\s*=\s*"([^"]+)"')) {
                    [void]$ids.Add($m.Groups[1].Value.Trim())
                }
                break
            }
        } finally {
            $zip.Dispose()
        }
    } catch {
        Write-Warning "skip $($jar.Name): $_"
    }
}

$created = 0
$existing = 0
foreach ($id in ($ids | Sort-Object)) {
    if ([string]::IsNullOrWhiteSpace($id)) { continue }
    $dir = Join-Path $langRoot (Join-Path $id "lang")
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
    $file = Join-Path $dir "ja_jp.json"
    if (Test-Path -LiteralPath $file) {
        $existing++
        continue
    }
    [System.IO.File]::WriteAllText($file, "{`n}`n", (New-Object System.Text.UTF8Encoding($false)))
    $created++
}

"modids: $($ids.Count) / created stubs: $created / existing files: $existing"
