$userReply = ""
############################
## first question
############################
Clear-Host
14.
while($userReply -ne "Who is there?"){
 $userReply = read-host "Knock Knock!"
}
Clear-Host
while($userReply -ne "Orange who?"){
 $userReply = read-host "Orange"
}
Clear-Host
Write-Output "Orange you glad you created this PowerShell script?"
Start-Sleep -Seconds 5
############################
## Second Question
############################
Clear-Host
while($userReply -ne "Who is there?"){
 $userReply = read-host "Knock Knock!"
}
Clear-Host
while($userReply -ne "Orange who?"){
 $userReply = read-host "Orange"
}
Clear-Host
Write-Output "Oranges are oranges but this is PowerShellscripting!"
Start-Sleep -Seconds 5
############################
## Third Question
############################
Clear-Host
while($userReply -ne "Who is there?"){
 $userReply = read-host "Knock Knock!"
}
15.
Clear-Host
while($userReply -ne "Banana who?"){
 $userReply = read-host "Banana"
}
Clear-Host
Write-Output "Orange you glad I didn't say orange?"
Start-Sleep -Seconds 5
############################
## Farewell Message
############################
Clear-Host
Write-Output "Goodbye!`n`n"