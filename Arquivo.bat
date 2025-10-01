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
ECHO   [3] Verificar Windows Update
ECHO.
ECHO   [0] Sair
ECHO.

SET /P opcao=Escolha uma opcao: 

IF "%opcao%"=="1" GOTO menu_softwares
IF "%opcao%"=="2" GOTO abrir_notepad
IF "%opcao%"=="3" GOTO windows_update
IF "%opcao%"=="0" EXIT

ECHO Opcao Invalida! Pressione qualquer tecla para tentar novamente.
PAUSE > NUL
GOTO menu_principal

:windows_update
CLS
ECHO ====================================================
ECHO        VERIFICACAO AUTOMATICA - POWERSHELL
ECHO ====================================================
ECHO.
ECHO Esta funcao ira usar o PowerShell para verificar, baixar
ECHO e instalar as atualizacoes do Windows.
ECHO.
ECHO O processo sera exibido nesta tela.
ECHO.
ECHO O COMPUTADOR PODERA SER REINICIADO AUTOMATICAMENTE.
ECHO.
PAUSE
CLS

rem O comando abaixo executa o script PowerShell
powershell.exe -ExecutionPolicy Bypass -File "%~dp0\VerificarUpdates.ps1"

ECHO.
ECHO O processo do PowerShell foi finalizado.
PAUSE
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
ECHO   [3] Instalar WinRar
ECHO   [4] Instalar Teams
ECHO   [5] Instalar AnyDesk
ECHO   [6] Instalar Klite
ECHO   [7] Instalar Revo
ECHO.
ECHO   [0] Voltar ao Menu Principal
ECHO.

SET /P escolha=Qual software deseja instalar?: 

IF "%escolha%"=="1" GOTO instalar_chrome
IF "%escolha%"=="2" GOTO instalar_adobe
IF "%escolha%"=="3" GOTO instalar_winrar
IF "%escolha%"=="4" GOTO instalar_teams
IF "%escolha%"=="5" GOTO instalar_anydesk
IF "%escolha%"=="6" GOTO instalar_klite
IF "%escolha%"=="7" GOTO instalar_revo
IF "%escolha%"=="0" GOTO menu_principal

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
winget install Adobe.Acrobat.Reader.64-bit --silent -h --accept-source-agreements
ECHO.
ECHO Adobe Acrobat Reader instalado com sucesso!
PAUSE
GOTO menu_softwares

:instalar_winrar
CLS
ECHO Conectando e baixando o Winrar... Por favor, aguarde.
winget install RARLab.WinRAR --silent -h --accept-source-agreements
ECHO.
ECHO WinRar instalado com sucesso!
PAUSE
GOTO menu_softwares

:instalar_teams
CLS
ECHO Conectando e baixando o teams... Por favor, aguarde.
winget install Microsoft.Teams --silent -h --accept-source-agreements
ECHO.
ECHO Teams instalado com sucesso!
PAUSE
GOTO menu_softwares

:instalar_anydesk
CLS
ECHO Conectando e baixando o AnyDesk... Por favor, aguarde.
winget install AnyDesk.AnyDesk --silent -h --accept-source-agreements
ECHO.
ECHO AnyDesk instalado com sucesso!
PAUSE
GOTO menu_softwares

:instalar_klite
CLS
ECHO Conectando e baixando o Klite... Por favor, aguarde.
winget install CodecGuide.K-LiteCodecPack.Standard --silent -h --accept-source-agreements
ECHO.
ECHO Klite instalado com sucesso!
PAUSE
GOTO menu_softwares

:instalar_revo
CLS
ECHO Conectando e baixando o Revo... Por favor, aguarde.
winget install RevoUninstaller.RevoUninstaller --silent -h --accept-source-agreements
ECHO.
ECHO Revo instalado com sucesso!
PAUSE
GOTO menu_softwares
