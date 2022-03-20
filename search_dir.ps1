if ($args.count -lt 1) {
	Write-Error 'Missing positional argument'
	Write-Error 'search_dir "search pattern"'
	exit 1
}

$search_filter = $args[0]
$current_dir = Get-Location

Get-ChildItem -Path $current_dir -Filter $search_filter -Recurse -ErrorAction SilentlyContinue -Force