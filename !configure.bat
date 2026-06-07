@echo off
cls
call .\!!core_vars.bat

echo === SoftwareRasterizer configure ===

for %%C in (%SR_BUILD_PRESETS%) do (
    if "%%C"=="dev" (
        cmake --preset dev-config
    ) else if "%%C"=="release" (
        cmake --preset release-config
    ) else (
        echo Unknown build preset: %%C
        exit /b 1
    )

    if errorlevel 1 exit /b 1
)
