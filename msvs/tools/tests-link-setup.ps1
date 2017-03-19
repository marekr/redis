$links = @(
             ("..\..\src\redis-server","..\x64\Debug\redis-server.exe"),
             ("..\..\src\redis-benchmark","..\x64\Debug\redis-benchmark.exe"),
             ("..\..\src\redis-check-aof","..\x64\Debug\redis-check-aof.exe"),
             ("..\..\src\redis-cli","..\x64\Debug\redis-cli.exe")
   )
   
foreach ($link in $links) {
	Remove-Item $link[0]
	New-Item -ItemType SymbolicLink -Name $link[0] -Target $link[1]
}