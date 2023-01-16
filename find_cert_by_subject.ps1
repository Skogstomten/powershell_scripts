$subject = $args[0]

Get-ChildItem Cert:\LocalMachine\Root | Where-Object { $_.Subject -like "*" + $subject +"*" } | select Subject, Thumbprint