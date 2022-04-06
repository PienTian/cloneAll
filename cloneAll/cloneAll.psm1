# this function clones target user's repository on github
$ErrorActionPreference="Stop"

Function Clone-All
{
    [CmdletBinding()]
    param(
        [parameter(Mandatory=$false)]
        [Alias('u')]
        #[ValidateNotNullOrEmpty] this param decreases error readability
        [String] $UserName = ""

    )
    Begin
    {
        $user = ""
        if (-not $UserName){
            if(-not $1){ throw "parameter is not set"}
            $user = $1
        }else{
            $user = $UserName
        }
        try{
        $content = Invoke-WebRequest https://api.github.com/users/$user/repos
        }catch{
            throw "the user may not exist or wrong url"
        }
        $contentObject = ConvertFrom-Json $content
        $urls = $contentObject.'clone_url'
    }
    Process
    {
        foreach($url in $urls){
            git clone $url
        }
    }
}

New-Alias -Name clall -Value Clone-All
# enabling to call the functoin
Export-ModuleMember -Function 'Clone-All' -Alias 'clall'

