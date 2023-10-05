## dirSync copies the contents of one folder to another as a specified user.
begin
{
$username = 'admin'
$password = 'password'
$from = 'C:\path\from'
$to = 'C:\path\to'

$securePassword = ConvertTo-SecureString $password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential $username, $securePassword
Start-Process robocopy -Credential $credential -ArgumentList ($from, $to, "/E /R:5") -WorkingDirectory 'C:\path\scriptLocation'
}