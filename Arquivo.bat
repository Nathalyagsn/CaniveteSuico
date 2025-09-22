@echo off
echo Iniciando a instalacao silenciosa do Google Chrome...

rem Certifique-se de que o nome do arquivo MSI abaixo esta correto.
start /wait Programas\ChromeSetup.exe /silent /install

echo.
echo A instalacao foi concluida.
pause