[DscResource()]
class ADDefaultUserLocation {
    [DscProperty(Key)]
    [ValidateSet("Yes")]
    [string] $IsSingleInstance
    
    [DscProperty(Mandatory)]
    [string] $TargetDN    

    [ADDefaultUserLocation] Get() {
        $this.TargetDN = (Get-ADDomain).UsersContainer

        return $this
    }
  
    [void] Set() {
        if([ADSI]::Exists("LDAP://$($this.TargetDN)")) {
            redirusr $this.TargetDN
        }
    }

    [bool] Test() {
        if((Get-ADDomain).UsersContainer -eq $this.TargetDN) {
            return $true
        }
        else {
            return $false
        }
    }
}
