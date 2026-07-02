@echo off
echo ===================================================
echo   Installing Custom pyRevit Tools...
echo ===================================================
echo.

:: Define the standard pyRevit extensions path
SET "EXT_DIR=%APPDATA%\pyRevit\Extensions"

:: -----------------------------------------------------
:: 1. Check and Install Core UI
:: -----------------------------------------------------
echo Checking Core UI...
IF NOT EXIST "%EXT_DIR%\MyCompanyCore.extension" (
    pyrevit extend ui MyCompanyCore "https://github.com/your-username/MyCompany-Core.git"
) ELSE (
    echo [OK] Core UI is already installed. Skipping...
)
echo.

:: -----------------------------------------------------
:: 2. Check and Install Plumbing Tools
:: -----------------------------------------------------
echo Checking Plumbing Tools...
IF NOT EXIST "%EXT_DIR%\Plumbing.extension" (
    pyrevit extend ui Plumbing "https://github.com/your-username/MyCompany-Plumbing.git"
) ELSE (
    echo [OK] Plumbing Tools are already installed. Skipping...
)
echo.

:: -----------------------------------------------------
:: Finish Up
:: -----------------------------------------------------
echo ===================================================
echo   Installation Complete! Please restart Revit.
echo   Use the 'Update' button in Revit for future updates.
echo ===================================================
timeout /t 5 >nul
