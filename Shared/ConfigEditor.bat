@echo off
@Cimetrix.ConfigurationEditor.exe ConfigDecrypted.cfgx
@timeout 1
@Cimetrix.ConfigurationEditor.exe -e ConfigDecrypted.cfgx Config.cfge


