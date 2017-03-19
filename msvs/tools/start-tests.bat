@echo off
set /p clients="Number of parallel test clients"

cd ..\..\

tclsh8.5.exe tests/test_helper.tcl --clients %clients%

cd .\msvs\tools