<#
    .SYNOPSIS
        Set the default location for User objects to the "mydomain.com/Employees" OU.
#>
Configuration Sample_ADDefaultUserLocation {
    Import-DscResource -ModuleName 'ADDefaultLocationDsc'

    Node localhost {
        ADDefaultUserLocation ADDefaultUserLocationConfig  {
            IsSingleInstance = "Yes"
            TargetDN = "OU=Employees,DC=mydomain,DC=com"
        }
    }
}
