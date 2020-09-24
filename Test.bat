@echo off
@cls
@cls
@echo Building Project Folder
@mkdir InstallFolder\Pinnacle
@xcopy Dependencies InstallFolder\Pinnacle\Dependencies /E /H /C /I
@xcopy Shared InstallFolder\Pinnacle\Shared /E /H /C /I
@xcopy EquipmentModels InstallFolder\Pinnacle\EquipmentModels  /E /H /C /I
@echo Removing Extra Files
@del /f InstallFolder\Pinnacle\Shared\ConfigEditor.bat
@del /f InstallFolder\Pinnacle\Shared\ConfigurationFileEncrypt.bat
@del /f InstallFolder\Pinnacle\Shared\ConfigDecrypted.cfgx
@del /f InstallFolder\Pinnacle\Shared\Cimetrix.ConfigurationEditor.exe
@rmdir /Q/S InstallFolder
@echo.
@echo.
@echo.
@echo Complete!
@echo.
@echo.
@echo.
@echo To Install: Run the PinnacleInstaller.exe on the Production Machine
@echo.
@echo Press any key to close
@pause > nul
