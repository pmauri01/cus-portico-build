
set scritpToExecute=%1
set remoteSigningVM=%2
set remoteSignigScript=%3
rem set user=%4
rem set password=%5


REM Compile Solutions
REm Determine where the build outputs are

set outputBinaries='\\10.210.0.184\XP2Build.17.2\Staging\Client\XP2'


powershell "%scritpToExecute% %RemoteSigningVM% %remoteSignigScript%  %outputBinaries% '%user%' '%password%'"
