<#
    .SYNOPSIS
        Set the default location for Computer objects to the "mydomain.com/Servers" OU.
#>
Configuration Sample_ADDefaultComputerLocation {
    Import-DscResource -ModuleName 'ADDefaultLocationDsc'

    Node localhost {
        ADDefaultComputerLocation ADDefaultComputerLocationConfig  {
            IsSingleInstance = "Yes"
            TargetDN = "OU=Servers,DC=mydomain,DC=com"
        }
    }
}
