# PoshBot.FileUpload

Basic poshbot plugin for testing file uploads from a local system.  
Written to test PoshBot SendMessage cases  

## Syntax

Uploads a file to the slack channel or thread  
`!uploadfile "C:\temp\SlackUpload.txt"`

Uploads the content of a file with a Title. Redirects to the user's DM  
`!upload "C:\temp\SlackUpload.txt" -title "TestSlackUpload" -dm -content`
