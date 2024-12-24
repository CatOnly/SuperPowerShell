function Touch-File() {
    $fileName = $args[0]
    # Check of the file exists
    if (-not(Test-Path $fileName)) {
        # It does not exist. Create it
        New-Item -ItemType File -Name $fileName
    }
    else {
        #It exists. Update the timestamp
        (Get-ChildItem $fileName).LastWriteTime = Get-Date
    }
}

### Create an alias for touch

Set-Alias -Name touch -Value Touch-File
Set-Alias -Name open 	-Value start
Set-Alias -Name which -Value Get-Command
Set-Alias -Name ~ 		-Value C:\Users\Administrator
