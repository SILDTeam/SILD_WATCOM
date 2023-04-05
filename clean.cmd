@echo off
if not exist %OWROOT%\build\%OWOBJDIR%\builder.exe goto no_builder
REM delete the builder and wmake build directories
if exist %OWROOT%\bld\builder\%OWOBJDIR%\*.exe del %OWROOT%\bld\builder\%OWOBJDIR%\*.exe
if exist %OWROOT%\bld\builder\%OWOBJDIR%\*.obj del %OWROOT%\bld\builder\%OWOBJDIR%\*.obj
if exist %OWROOT%\bld\builder\%OWOBJDIR%\*.map del %OWROOT%\bld\builder\%OWOBJDIR%\*.map
if exist %OWROOT%\bld\builder\%OWOBJDIR%\*.err del %OWROOT%\bld\builder\%OWOBJDIR%\*.err
if exist %OWROOT%\bld\builder\%OWOBJDIR%\*.lnk del %OWROOT%\bld\builder\%OWOBJDIR%\*.lnk
if exist %OWROOT%\bld\builder\%OWOBJDIR%\*.sym del %OWROOT%\bld\builder\%OWOBJDIR%\*.sym
if exist %OWROOT%\bld\builder\%OWOBJDIR% rmdir %OWROOT%\bld\builder\%OWOBJDIR%
if exist %OWROOT%\bld\wmake\%OWOBJDIR%\*.exe del %OWROOT%\bld\wmake\%OWOBJDIR%\*.exe
if exist %OWROOT%\bld\wmake\%OWOBJDIR%\*.obj del %OWROOT%\bld\wmake\%OWOBJDIR%\*.obj
if exist %OWROOT%\bld\wmake\%OWOBJDIR%\*.map del %OWROOT%\bld\wmake\%OWOBJDIR%\*.map
if exist %OWROOT%\bld\wmake\%OWOBJDIR%\*.gh del %OWROOT%\bld\wmake\%OWOBJDIR%\*.gh
if exist %OWROOT%\bld\wmake\%OWOBJDIR%\*.err del %OWROOT%\bld\wmake\%OWOBJDIR%\*.err
if exist %OWROOT%\bld\wmake\%OWOBJDIR%\*.lnk del %OWROOT%\bld\wmake\%OWOBJDIR%\*.lnk
if exist %OWROOT%\bld\wmake\%OWOBJDIR%\*.sym del %OWROOT%\bld\wmake\%OWOBJDIR%\*.sym
if exist %OWROOT%\bld\wmake\%OWOBJDIR%\*.tmp del %OWROOT%\bld\wmake\%OWOBJDIR%\*.tmp
if exist %OWROOT%\bld\wmake\%OWOBJDIR% rmdir %OWROOT%\bld\wmake\%OWOBJDIR%
REM clean all projects
cd %OWROOT%\bld
builder -i clean
builder -i bootclean
REM Finally delete the builder and wmake executables
if exist %OWROOT%\build\%OWOBJDIR%\builder.exe del %OWROOT%\build\%OWOBJDIR%\builder.exe
goto wmake_del
:no_builder
echo Cannot find builder - did you run build.bat?
:wmake_del
if exist %OWROOT%\build\%OWOBJDIR%\wmake.exe del %OWROOT%\build\%OWOBJDIR%\wmake.exe
cd %OWROOT%

