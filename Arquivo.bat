@ECHO OFF
TITLE Canivete Suiço 

:menu_principal
CLS
ECHO =================================
ECHO              MENU
ECHO =================================
ECHO.
ECHO   [1] Instalar Softwares
ECHO   [2] Abrir bloco de notas
ECHO.
ECHO   [0] Sair
ECHO.

SET /P opcao=Escolha uma opcao: 

IF "%opcao%"=="1" GOTO menu_softwares
IF "%opcao%"=="2" GOTO abrir_notepad
IF "%opcao%"=="0" EXIT

ECHO Opcao Invalida! Pressione qualquer tecla para tentar novamente.
PAUSE > NUL
GOTO menu_principal

:abrir_notepad
CLS
ECHO =========================
ECHO        BLOCO DE NOTAS
ECHO =========================
ECHO.
ECHO Abrindo o bloco de notas...

start notepad

ECHO.
ECHO O bloco de notas foi iniciado. Pressione qualquer tecla para voltar ao menu.
PAUSE>NUL
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
ECHO Conectando e baixando o Google Chrome... Por favor, aguarde.
winget install Google.Chrome --silent -h --accept-source-agreements
ECHO.
ECHO Google Chrome instalado com sucesso!
PAUSE
GOTO menu_softwares

:instalar_adobe
CLS
ECHO Conectando e baixando o Adobe Acrobat Reader... Por favor, aguarde.
rem Note que o ID do Adobe Reader e um pouco diferente.
winget install Adobe.Acrobat.Reader.64-bit --silent -h --accept-source-agreements
ECHO.
ECHO Adobe Acrobat Reader instalado com sucesso!
PAUSE
GOTO menu_softwares
