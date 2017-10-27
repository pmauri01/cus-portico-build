
set scritpToExecute=%1
Rem set remoteSigningVM=%2
rem set remoteSignigScript=%3
set user=%2
set password=%3

ECHO user: %user%

REM Compile Solutions
REm Determine where the build outputs are

set outputBinaries='\\10.210.0.184\XP2Build.17.2\Staging\Client\XP2'


powershell "%scritpToExecute% %RemoteSigningVM% %RemoteSignigScript%  %outputBinaries% %user% %password%"
