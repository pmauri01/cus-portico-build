
set scritpToExecute=%1
Rem set remoteSigningVM=%2
rem set remoteSignigScript=%3
set user=%2
set password=%3

ECHO user: %user%

REM Compile Solutions
REm Determine where the build outputs are

REM binaries is XP2 valid machine
REM set outputBinaries='\\10.210.0.184\XP2Build.17.2\Staging\Client\XP2'

REM binaries is DataSafe valid machine
set outputBinaries='\\10.141.101.248\Release'

REM binaries is Galaxy valid machine
Rem set outputBinaries='\\trovd000174\TfsDrop\tfsUIDeploy\R7 - UI Main Build\R7 - UI Main Build_2.1.07.00_20170914.1'
REM set outputBinaries=%outputBinaries: =SPACE%


powershell "%scritpToExecute% %RemoteSigningVM% %RemoteSigningScript%  %outputBinaries% %user% %password%"
