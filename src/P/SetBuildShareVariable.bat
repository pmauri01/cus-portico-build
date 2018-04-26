echo off

rem set AGENT_MACHINENAME=trovd000184
rem set AGENT_BUILDDIRECTORY=c:\Agents\agent1\12
set root=%AGENT_BUILDDIRECTORY:~0,3%
set drive=%AGENT_BUILDDIRECTORY:~0,1%
call set BuildShare==%%AGENT_BUILDDIRECTORY:%root%=\\%AGENT_MACHINENAME%\%drive%$\%%
echo BuildShare=%BuildShare%