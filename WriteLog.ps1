$LogLoc="C:\Temp\"

Function WriteLog {
    Param([string]$LogString)
    $LogString = (get-date -Format u).ToString() + "`t $LogString"
    Add-content $LogFile -value $LogString
    Start-Sleep 2
}

# Create empty logfile if not exist
$LogFile = $LogLoc + "TestLog-" + $Hostname + ".log" 
If (-not(Test-Path -Path $LogFile)) {Write-Output $null >> $LogFile}
WriteLog "-----------------------------------------------------------------------"
WriteLog "--- Logging started on $Hostname ---"
WriteLog "Script: Test_LogFunction"
WriteLog "Version: 1.0"
WriteLog "Last Modified Date: 1/24/2022"
WriteLog "Authors: Mr.NoBody"
WriteLog "Division: TEST"
WriteLog "-----------------------------------------------------------------------"

WriteLog -LogString "TEST Done"
