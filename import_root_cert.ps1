$cert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2
$cert_path = Read-Host 'Certificate path'
$cert_path = Resolve-Path $cert_path
$cert_password = Read-Host 'Pass phrase'
$cert.Import($cert_path, $cert_password, "Exportable,PersistKeySet")

$store = new-object System.Security.Cryptography.X509Certificates.X509Store(
    [System.Security.Cryptography.X509Certificates.StoreName]::Root,
    "localmachine"
)
$store.open("MaxAllowed") 
$store.add($cert) 
$store.close()

Write-Host 'Cert imported'