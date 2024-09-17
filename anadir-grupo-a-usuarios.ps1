Import-Module ActiveDirectory

$csvPath = "C:\Zoho\Users.csv"

$grupoAD = "Acceso_Internet_FueraH"

Import-Csv -Path $csvPath | ForEach-Object {
     $usuario = $_.Usuario
    Add-ADGroupMember -Identity $grupoAD -Members $usuario
}