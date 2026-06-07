@echo off
cls
call .\!!core_vars.bat

echo === SoftwareRasterizer build ===

for %%C in (%SR_BUILD_PRESETS%) do (
    cmake --build --preset %%C
    if errorlevel 1 exit /b 1
)
