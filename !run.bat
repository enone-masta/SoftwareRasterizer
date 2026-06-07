@echo off
cls
call .\!!core_vars.bat

echo === SoftwareRasterizer run ===

if "%SR_RUN_PRESET%"=="dev" (
    set SR_RUN_DIR=dev
) else if "%SR_RUN_PRESET%"=="release" (
    set SR_RUN_DIR=release
) else (
    echo Unknown run preset: %SR_RUN_PRESET%
    exit /b 1
)

if exist ".\build\%SR_RUN_DIR%\%SR_EXE_NAME%" (
    ".\build\%SR_RUN_DIR%\%SR_EXE_NAME%"
) else if exist ".\build\%SR_RUN_DIR%\Debug\%SR_EXE_NAME%" (
    ".\build\%SR_RUN_DIR%\Debug\%SR_EXE_NAME%"
) else if exist ".\build\%SR_RUN_DIR%\Release\%SR_EXE_NAME%" (
    ".\build\%SR_RUN_DIR%\Release\%SR_EXE_NAME%"
) else (
    echo Could not find %SR_EXE_NAME% for preset: %SR_RUN_PRESET%
    exit /b 1
)
