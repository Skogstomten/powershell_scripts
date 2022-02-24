if ($args.count -lt 1) {
    Write-Error 'Missing positional argument'
    exit 1
}

$path_to_add = $args[0]
$path_to_add = Resolve-Path $path_to_add

$old_path = (Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH).path

$new_path = $old_path + ';' + $path_to_add

Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH -Value $new_path

Write-Output 'Path has been updated. Restart the terminal session to apply the changes'