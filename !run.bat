@echo off
cls

echo === SoftwareRasterizer run ===

if exist ".\build\dev\SoftwareRasterizer.exe" (
    ".\build\dev\SoftwareRasterizer.exe"
) else if exist ".\build\dev\Debug\SoftwareRasterizer.exe" (
    ".\build\dev\Debug\SoftwareRasterizer.exe"
) else (
    echo Could not find SoftwareRasterizer executable.
    exit /b 1
)
