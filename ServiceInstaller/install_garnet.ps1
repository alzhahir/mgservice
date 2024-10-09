$exePath = "${PSScriptRoot}\MSGService.exe"
$serviceParameters = @{
    Name = "Garnet"
    BinaryPathName = "${exePath}"
    DisplayName = "Garnet Worker"
    DependsOn = "TCPIP"
    StartupType = "Automatic"
    Description = "Garnet cache server service"
}

New-Service @serviceParameters
Start-Service -Name "Garnet"