Import-Module .\trigonometry.psm1

Describe "Test the trigonometry module" {

    It "Should output the correct area" {
        Get-Area -width 2 -height 3 | Should be 6
    }

    It "should contain a function that is called Get-Area" {
        '.\trigonometry.psm1' | should contain "function Get-Area"
    }

    It "should not contain a function that is called Get-Area with a wrong case" {
        '.\trigonometry.psm1' | should not containExactly "function get-area"
    }

}