
echo off
set scritpToExecute=%1
set remoteSigningVM=%2
set remoteSignigScript=%3
set user=%4
set password=%5


REM Compile Solutions
REm Determine where the build outputs are

set outputBinaries=\\trovd000174\TfsDrop\tfsUIDeploy\R7 - UI Main Build\R7 - UI Main Build_2.1.07.00_20170914.1

echo outputBinaries %outputBinaries%

set outputBinaries1="%outputBinaries%"

echo outputBinaries1 %outputBinaries1%


echo powershell /runas:Administrator -file %scritpToExecute%  %RemoteSigningVM% %remoteSignigScript%  %outputBinaries1% %user% %password%

powershell /runas:Administrator -file %scritpToExecute%  %RemoteSigningVM% %remoteSignigScript%  %outputBinaries1% %user% %password%


