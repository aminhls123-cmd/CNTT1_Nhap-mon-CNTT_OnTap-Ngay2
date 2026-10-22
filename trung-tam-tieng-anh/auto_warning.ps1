# Script: auto_warning.ps1
# Tac gia: NGUYEN_VUONG_ANH_MINH
# Ngay tao: 21/10
 
Write-Host "Dang loc canh bao thanh toan..."
 
"=== CANH BAO THANH TOAN ===" > logs/warning_report.txt
Get-Content logs/payment.log  | Select-String "WARNING" >> logs/warning_report.txt
 
Write-Host "Hoan thanh!"