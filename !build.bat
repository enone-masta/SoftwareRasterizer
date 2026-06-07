@echo off
cls

echo === SoftwareRasterizer build ===

cmake --build --preset dev
if errorlevel 1 exit /b %errorlevel%