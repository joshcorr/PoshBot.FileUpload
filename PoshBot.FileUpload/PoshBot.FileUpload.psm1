#Functions written below:
function uploadfile {
    <#
    .SYNOPSIS
        PoshBot function to upload a local file (or one the service account can access)
    .EXAMPLE
        !uploadfile [-souce [//path/to/something|C:\path\locally] [-Title <someFileName>] [-DM] [-Content]]
    #>
    [PoshBot.BotCommand(
        CommandName = 'uploadfile',
        Aliases = ('upload')
    )]
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [String]$source,
        [String]$title,
        [switch]$dm,
        [switch]$content
    )
    try {
        if (Test-Path -Path $source) {
            if ($content){
                $splatParams = @{
                    Content = $(Get-Content -Path $source)
                }
            } else {
                $splatParams = @{
                    Path = $source
                    KeepFile = $true
                }
            }
            switch ($PSBoundParameters.Keys){
                'dm' { $splatParams.DM = $true }
                'title' {$splatParams.Title =  $title}
            }

            New-PoshBotFileUpload @splatParams
        } else {
            New-PoshBotCardResponse -Type Error -Text "File does not exist at the path: $source."
        }
    } catch {
        New-PoshBotCardResponse -Type Error -Text "Unable to upload: $source."
    }
}



# Export all functions for poshbot
Export-ModuleMember *
