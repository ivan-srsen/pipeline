@echo off
@cls
@cls

@echo off
echo Hello World from %AGENT_NAME%.
echo My ID is %AGENT_ID%.
echo AGENT_WORKFOLDER contents:
@dir %AGENT_WORKFOLDER%
echo AGENT_BUILDDIRECTORY contents:
@dir %AGENT_BUILDDIRECTORY%
echo BUILD_SOURCESDIRECTORY contents:
@dir %BUILD_SOURCESDIRECTORY%
echo Over and out.
@echo Building Project Folder
@mkdir InstallFolder\Pinnacle
@xcopy %AGENT_BUILDDIRECTORY%\Dependencies %AGENT_BUILDDIRECTORY%\InstallFolder\Pinnacle\Dependencies /E /H /C /I
@xcopy Shared InstallFolder\Pinnacle\Shared /E /H /C /I
@xcopy EquipmentModels InstallFolder\Pinnacle\EquipmentModels  /E /H /C /I
@echo Removing Extra Files
@del /f InstallFolder\Pinnacle\Shared\ConfigEditor.bat
@del /f InstallFolder\Pinnacle\Shared\ConfigurationFileEncrypt.bat
@del /f InstallFolder\Pinnacle\Shared\ConfigDecrypted.cfgx
@del /f InstallFolder\Pinnacle\Shared\Cimetrix.ConfigurationEditor.exe
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
