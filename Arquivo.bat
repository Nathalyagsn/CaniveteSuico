@ECHO OFF
TITLE Canivete Suiço 

:menu_principal
CLS
ECHO =================================
ECHO              MENU
ECHO =================================
ECHO.
ECHO   [1] Instalar Softwares
ECHO.
ECHO   [0] Sair
ECHO.

SET /P opcao=Escolha uma opcao: 

IF "%opcao%"=="1" GOTO menu_softwares
IF "%opcao%"=="0" EXIT

ECHO Opcao Invalida! Pressione qualquer tecla para tentar novamente.
PAUSE > NUL
GOTO menu_principal


:menu_softwares
CLS
ECHO =================================
ECHO      LISTA DE SOFTWARES
ECHO =================================
ECHO.
ECHO   [1] Instalar Google Chrome
ECHO   [2] Instalar Adobe Reader
ECHO.
ECHO   [9] Voltar ao Menu Principal
ECHO.

SET /P escolha=Qual software deseja instalar?: 

IF "%escolha%"=="1" GOTO instalar_chrome
IF "%escolha%"=="2" GOTO instalar_adobe
IF "%escolha%"=="9" GOTO menu_principal

ECHO Opcao Invalida! Pressione qualquer tecla para tentar novamente.
PAUSE > NUL
GOTO menu_softwares


:instalar_chrome
CLS
ECHO Iniciando a instalacao silenciosa do Google Chrome...

rem O comando abaixo executa o instalador que esta na pasta "Programas".
start /wait Programas\ChromeSetup.exe /silent /install

ECHO.
ECHO A instalacao foi concluida.
PAUSE
GOTO menu_softwares

:instalar_adobe
CLS
ECHO Iniciando a intalacao silenciosa do Adobe Reader...

rem O comando abaixo executa o instalador que esta na pasta "Programas".
start /wait Programas\Reader_br_install.exe /silent /install

ECHO.
ECHO A instalacao foi concluida.
PAUSE
GOTO menu_softwares