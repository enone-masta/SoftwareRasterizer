@echo off
cls

echo === SoftwareRasterizer configure ===

cmake --preset dev
if errorlevel 1 exit /b %errorlevel%