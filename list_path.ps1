$path_segments = ($env:path).split(';')

Foreach ($segment in $path_segments) {
    Write-Output $segment
}