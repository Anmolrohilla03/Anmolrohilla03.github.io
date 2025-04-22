$imageFiles = @(
    "mutual-funds.jpg",
    "control-tower.jpg",
    "taza.jpg",
    "joey.jpg"
)

$colors = @(
    "#4285f4", # blue
    "#34a853", # green
    "#fbbc05", # yellow
    "#ea4335"  # red
)

for ($i = 0; $i -lt $imageFiles.Count; $i++) {
    $filename = $imageFiles[$i]
    $color = $colors[$i]
    
    $html = @"
<svg width="800" height="600" xmlns="http://www.w3.org/2000/svg">
  <rect width="800" height="600" fill="$color" />
  <text x="400" y="300" font-family="Arial" font-size="30" fill="white" text-anchor="middle">$filename</text>
</svg>
"@
    
    $html | Out-File -FilePath "images\$filename.svg" -Encoding utf8
}

Write-Host "Placeholder SVG files created." 