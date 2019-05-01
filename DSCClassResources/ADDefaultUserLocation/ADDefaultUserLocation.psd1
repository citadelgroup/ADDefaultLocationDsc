@{
    # Script module or binary module file associated with this manifest.
    RootModule = 'ADDefaultUserLocation.psm1'
    
    # Version number of this module.
    moduleVersion = '1.0.0'
    
    # Supported PSEditions
    # CompatiblePSEditions = @()
    
    # ID used to uniquely identify this module
    GUID = 'f8fbaff1-bb54-4b4c-862d-eb9516a538c6'
    
    # Author of this module
    Author = 'Daniel Snelling'
    
    # Company or vendor of this module
    CompanyName = 'Citadel Group'
    
    # Copyright statement for this module
    Copyright = '(c) 2019 Citadel Group. All rights reserved.'
    
    # Description of the functionality provided by this module
    Description = 'This resource provides the functionality needed to manipulate the default AD locations for storing AD User objects.'
    
    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '5.1'
    
    # DSC resources to export from this module
    DscResourcesToExport = @('ADDefaultUserLocation')
}
