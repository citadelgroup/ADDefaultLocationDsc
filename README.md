# ADDefaultLocationDsc

ADDefaultLocationDsc is a module written to provide additional Active Directory configuration resources.

## Resources

* [ADDefaultComputerLocation](#addefaultcomputerlocation): Provides a mechanism to set the default Active Directory location for Computer objects.
* [ADDefaultUserLocation](#addefaultuserlocation): Provides a mechanism to set the default Active Directory location for User objects.

### ADDefaultComputerLocation

Provides a mechanism to set the default Active Directory location for Computer objects.

#### Requirements

* This must be run on an Active Directory Domain Controller

#### Parameters

* **[String] IsSingleInstance** _(Key)_: This value must be set to "Yes".
* **[String] TargetDN** _(Write)_: The OU or Container in X.500 format where Computer objects should be stored on creation.

#### Read-Only Properties from Get-TargetResource

None

#### Examples

* [Redirect new Computer objects](https://github.com/citadelgroup/ADDefaultLocationDsc/blob/master/Examples/Sample_ADDefaultComputerLocation.ps1)

### ADDefaultUserLocation

Provides a mechanism to set the default Active Directory location for User objects.

#### Requirements

None

#### Parameters

* **[String] IsSingleInstance** _(Key)_: This value must be set to "Yes".
* **[String] TargetDN** _(Write)_: The OU or Container in X.500 format where User objects should be stored on creation.

#### Read-Only Properties from Get-TargetResource

None

#### Examples

* [Redirect new Computer objects](https://github.com/citadelgroup/ADDefaultLocationDsc/blob/master/Examples/Sample_ADDefaultUserLocation.ps1)

## Versions

### 1.0.0

* Initial release of ADDefaultLocationDsc.