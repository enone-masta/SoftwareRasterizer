@echo off
cls

echo === SoftwareRasterizer build ===

cmake --preset dev
if errorlevel 1 exit /b %errorlevel%

cmake --build --preset dev
if errorlevel 1 exit /b %errorlevel%