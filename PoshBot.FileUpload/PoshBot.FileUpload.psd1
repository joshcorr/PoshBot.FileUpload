@{
RootModule = 'PoshBot.FileUpload.psm1'
ModuleVersion = '0.0.1'
GUID = 'e5109c16-9f7c-4c01-ad1c-5b7b0668a328'
Author = 'Josh Corrick (@joshcorr)'
CompanyName = 'blog.corrick.io'
Copyright = '(c) 2021 Josh Corrick (@joshcorr). All rights reserved.'
Description = 'PoshBot plugin for uploading files'
PowerShellVersion = '5.0.1'
RequiredModules = @('PoshBot')
FunctionsToExport = @('uploadfile')
CmdletsToExport = @()
VariablesToExport = @()
AliasesToExport = @()
PrivateData = @{
		Permissions = @(
			@{
				Name = 'Read'
				Description = 'Can run all Get commands'
			}
			@{
				Name = 'Write'
				Description = 'Can run all Set, Write, Update commands'
			}
			@{
				Name = 'Execute'
				Description = 'Can run all Invoke, Start commands'
			}
		)
		PSData = @{
			Tags = @('PoshBot','ChatOps','Files')
			LicenseUri = 'https://raw.githubusercontent.com/joshcorr/PoshBot.FileUpload/main/LICENSE'
			ProjectUri = 'https://github.com/joshcorr/PoshBot.FileUpload'
			ReleaseNotes = 'https://raw.githubusercontent.com/joshcorr/PoshBot.FileUpload/main/CHANGELOG.md'
			# Prerelease = ''
		}
	}
}