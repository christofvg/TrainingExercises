# This script calculates the area of a circle

function Get-Area {
    
    [CmdletBinding()]
    param (
        [Parameter()]
        [int]
        $radius
    )

    $area = [math]::round((2 * [math]::pi * $radius), 2)

    Write-Output $area

}

Clear-Host

$radius = Read-Host -Prompt "Please enter the radius of a circle"

$area = Get-Area -radius $radius

Write-Output "The area of the given circle is: $area"