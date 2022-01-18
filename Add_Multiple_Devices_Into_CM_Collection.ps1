$Servers=Get-Content "D:\jduraira\Servers.csv"


foreach($PSItem in $Servers) 
{ 
Try{
Write-Host "Adding $PSItem" -BackgroundColor Green
Add-CMDeviceCollectionDirectMembershipRule -CollectionID "G0102A89" -ResourceID (Get-CMDevice -Name $PSItem).ResourceID -ErrorAction SilentlyContinue
    }
Catch
    {
    Write-Host "$PSItem Not added" -ForegroundColor Red -BackgroundColor White
    }
}
