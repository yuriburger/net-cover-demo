$tool= Get-ChildItem -Path '$(Agent.TempDirectory)\VsTest\*\tools\net451\Team Tools\Dynamic Code Coverage Tools\amd64\' -Filter CodeCoverage.exe -Recurse -ErrorAction SilentlyContinue -Force

$parameter1 =  'analyze'
$parameter2 = '/output:$(Agent.BuildDirectory)\TestResults\TestCoverage.xml'
$parameter3 = '$(Agent.BuildDirectory)\TestResults\TestCoverage.coverage'
$parameters= "$parameter1 $parameter2 $parameter3"

Write-Host "Executing $tool $parameters"
$parms = $parameters.Split(" ")
& "$tool" $parms 
