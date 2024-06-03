REM inject C++ standard
echo CXX_STD=CXX17 >> src/Makevars

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
