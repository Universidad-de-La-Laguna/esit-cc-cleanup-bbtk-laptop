Set-StrictMode -Version latest
$ErrorActionPreference = "Stop"

<#
.SYNOPSIS
  Script para la limpieza de equipos de BBTK para teletrabajo
.LINK
  https://github.com/Universidad-de-La-Laguna/esit-cc-cleanup-bbtk-laptop
#>

# Forzamos a que el script se ejecute con privilegios de administrador
function Test-Admin {
  $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
  $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if ((Test-Admin) -eq $false)  {
    Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    exit
}

# Leemos la cuenta actual
$cuenta = [Environment]::UserName

# Pregunta de confirmacion
Write-Warning "Este programa eliminará la cuenta $cuenta con la que ha iniciado sesión y creará una nueva con el mismo nombre. Esto provocará la pérdida de los datos contenidos en la cuenta de dicho usuario." -WarningAction Inquire

# Renombramos la cuenta actual
Write-Host "Renombrando cuenta $cuenta ..."
$borrar = "borrar$(Get-Date -Format 'yymmddhhmmss')"
Rename-LocalUser -Name "$cuenta" -NewName "$borrar"
Write-Host "Cuenta $cuenta renombrada a $borrar"

# Creamos de nuevo la cuenta
Write-Host "Creando la cuenta $cuenta ..."
$newpassword = ConvertTo-SecureString "usuario" -AsPlainText -Force
New-LocalUser -Name "$cuenta" -Description "Cuenta generica de usuario" -Password $newpassword -PasswordNeverExpires -UserMayNotChangePassword -AccountNeverExpires
Write-Host "Cuenta Usuario creada correctamente"

# Añadir la cuenta al grupo de administradores
Write-Host "Añadiendo la nueva cuenta al grupo de administradores..."
Add-LocalGroupMember -Group "Administradores" -Member "$cuenta"
Write-Host "Cuenta $cuenta añadida al grupo de administradores"

# Eliminamos la cuenta antigua
Write-Host "Eliminando cuenta $borrar ..."
Remove-LocalUser -Name "$borrar"
Write-Host "Cuenta $borrar eliminada correctamente"

Write-Host "Este script ha terminado. En 5 segundos se cerrará la sesión actual"
Start-Sleep -s 5
logoff