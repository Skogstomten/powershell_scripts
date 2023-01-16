if ($args.count -lt 1) {
	Write-Error 'Missing positional argument'
	Write-Error 'search_dir "search pattern"'
	exit 1
}

$search_filter = $args[0]
$current_dir = Get-Location

ls $current_dir "*$($search_filter)*" -Recurse -Directory -Force -ErrorAction SilentlyContinue