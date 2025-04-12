$serverName = "localhost\SQLEXPRESS"
$databaseName = "AdventureWorksLT2022"
$outputFolder = "C:\ExportedCSVs"

if (!(Test-Path $outputFolder)) {
    New-Item -ItemType Directory -Path $outputFolder
}

$query = "SELECT * FROM SalesLT.Address"
$outputFile = Join-Path $outputFolder "Address.csv"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Query $query | Export-Csv -Path $outputFile -NoTypeInformation -Encoding UTF8

$query = "SELECT * FROM SalesLT.Customer"
$outputFile = Join-Path $outputFolder "Customer.csv"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Query $query | Export-Csv -Path $outputFile -NoTypeInformation -Encoding UTF8

$query = "SELECT * FROM SalesLT.CustomerAddress"
$outputFile = Join-Path $outputFolder "CustomerAddress.csv"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Query $query | Export-Csv -Path $outputFile -NoTypeInformation -Encoding UTF8

$query = "SELECT * FROM SalesLT.Product"
$outputFile = Join-Path $outputFolder "Product.csv"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Query $query | Export-Csv -Path $outputFile -NoTypeInformation -Encoding UTF8

$query = "SELECT * FROM SalesLT.ProductCategory"
$outputFile = Join-Path $outputFolder "ProductCategory.csv"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Query $query | Export-Csv -Path $outputFile -NoTypeInformation -Encoding UTF8

$query = "SELECT * FROM SalesLT.ProductDescription"
$outputFile = Join-Path $outputFolder "ProductDescription.csv"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Query $query | Export-Csv -Path $outputFile -NoTypeInformation -Encoding UTF8

$query = "SELECT * FROM SalesLT.ProductModel"
$outputFile = Join-Path $outputFolder "ProductModel.csv"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Query $query | Export-Csv -Path $outputFile -NoTypeInformation -Encoding UTF8

$query = "SELECT * FROM SalesLT.ProductModelProductDescription"
$outputFile = Join-Path $outputFolder "ProductModelProductDescription.csv"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Query $query | Export-Csv -Path $outputFile -NoTypeInformation -Encoding UTF8

$query = "SELECT * FROM SalesLT.SalesOrderDetail"
$outputFile = Join-Path $outputFolder "SalesOrderDetail.csv"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Query $query | Export-Csv -Path $outputFile -NoTypeInformation -Encoding UTF8

$query = "SELECT * FROM SalesLT.SalesOrderHeader"
$outputFile = Join-Path $outputFolder "SalesOrderHeader.csv"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Query $query | Export-Csv -Path $outputFile -NoTypeInformation -Encoding UTF8
