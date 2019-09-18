function Get-Area {
    param (
        [int]$height,
        [int]$width
    )

    $area = $height * $width
    Write-Output $area

}