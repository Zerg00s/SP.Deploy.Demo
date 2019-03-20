Param(
    [Parameter(Mandatory = $True)]
    [String]$TARGET_SITE_URL,
    [String]$Account = "",
    [String]$Password = ""
)

. .\Connect-SharePoint.ps1

Connect-SharePoint -TARGET_SITE_URL $TARGET_SITE_URL -Account $Account -Password $Password

$list = Get-PnPList -Identity "List1"
if ($list -eq $null){
    New-PnPList -Title "List1" -Template 100
}

$list = Get-PnPList -Identity "List2"
if ($list -eq $null){
    New-PnPList -Title "List2" -Template 100
}

$list = Get-PnPList -Identity "List3"
if ($list -eq $null){
    New-PnPList -Title "List3" -Template 100
}

<#

.\Deploy.ps1 -TARGET_SITE_URL "https://zergs.sharepoint.com/sites/TUGSite1" -Account "zergoos@zergs.onmicrosoft.com" -Password "XX"

#>