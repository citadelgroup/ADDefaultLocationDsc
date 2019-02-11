[DscResource()]
class ADDefaultComputerLocation {
    [DscProperty(Key)]
    [ValidateSet("Yes")]
    [string] $IsSingleInstance
    
    [DscProperty(Mandatory)]
    [string] $TargetDN    

    [ADDefaultComputerLocation] Get() {
        $this.TargetDN = (Get-ADDomain).ComputersContainer

        return $this
    }
  
    [void] Set() {
        if([ADSI]::Exists("LDAP://$($this.TargetDN)")) {
            redircmp $this.TargetDN
        }
    }

    [bool] Test() {
        if((Get-ADDomain).ComputersContainer -eq $this.TargetDN) {
            return $true
        }
        else {
            return $false
        }
    }
}
