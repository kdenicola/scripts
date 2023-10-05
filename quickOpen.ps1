## quickOpen opens files based on a regular expression entered by the user
begin
{
	##Edit to match directory it is being used in
	$Directory = "C:\Users\kdenicola\Desktop\test"
	$pattern = Read-Host -Prompt 'Enter a regular expression you would like to have opened'
	
	foreach($file in Get-ChildItem -Path $Directory -Force -Recurse)
	{
		if($file -match $pattern)
		{
			Invoke-Item $Directory\$file
		}

	}
}