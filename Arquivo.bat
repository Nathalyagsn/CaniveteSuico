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
ECHO   [4] Limpar fila de impressao Zebra
ECHO   [5] Limpeza de arquivos temporarios/DNS/Navegadores
ECHO   [6] Visualizar frequencia da RAM
ECHO   [7] Relatorio da bateria
ECHO   [8] Renovar endereco IP
ECHO.
ECHO   [0] Sair
ECHO.

SET /P opcao=Escolha uma opcao: 

IF "%opcao%"=="1" GOTO menu_softwares
IF "%opcao%"=="2" GOTO abrir_notepad
IF "%opcao%"=="3" GOTO windows_update
IF "%opcao%"=="4" GOTO limpar_zebra
IF "%opcao%"=="5" GOTO limpar_cash
IF "%opcao%"=="6" GOTO verificar_ram
IF "%opcao%"=="7" GOTO verificar_bateria
IF "%opcao%"=="8" GOTO renovar_ip
IF "%opcao%"=="0" EXIT

ECHO Opcao Invalida! Pressione qualquer tecla para tentar novamente.
PAUSE > NUL
GOTO menu_principal

:renovar_ip
CLS
ECHO ============================================
ECHO        RENOVANDO ENDEREÇO IP
ECHO ============================================
ECHO.
ECHO Limpando o cache DNS...
ipconfig /flushdns
ECHO.
ECHO Liberando o endereco IP atual...
ipconfig /release
ECHO.
ECHO Solicitando um novo endereco IP...
ipconfig /renew
ECHO.
ECHO ============================================
ECHO.
ECHO Processo concluido!
ECHO Pressione qualquer tecla para voltar ao menu.
pause > nul
goto :menu


:verificar_bateria
CLS
ECHO ============================================
ECHO        VERIFICANDO SAUDE DA BATERIA
ECHO ============================================
ECHO.

ECHO Aguarde um momento...
powercfg /batteryreport

ECHO.
ECHO Pressione qualquer tecla para voltar ao menu principal.
PAUSE > NUL
GOTO menu_principal

:verificar_ram
CLS
ECHO ============================================
ECHO        VERIFICANDO VELOCIDADE DA RAM
ECHO ============================================
ECHO.

ECHO Aguarde um momento...
powershell -command "Get-CimInstance -ClassName Win32_PhysicalMemory | ForEach-Object {Write-Host ('Slot: ' + $_.BankLabel + ' | Velocidade: ' + $_.Speed + ' MHz')}"

ECHO.
ECHO Pressione qualquer tecla para voltar ao menu principal.
PAUSE > NUL
GOTO menu_principal


:limpar_cash
CLS
ECHO ====================================================
ECHO      ROTINA DE LIMPEZA COMPLETA DE ARQUIVOS
ECHO ====================================================
ECHO.
ECHO Alguns navegadores podem precisar ser fechados.
ECHO.
PAUSE
CLS

ECHO.
ECHO [PASSO 1 de 7] Limpando arquivos temporarios...
del /S /F /Q "%TEMP%\*.*" > NUL 2>&1
del /S /F /Q "%SystemRoot%\Temp\*.*" > NUL 2>&1
rd /S /Q "%TEMP%" > NUL 2>&1
md "%TEMP%" > NUL 2>&1
ECHO    -> Concluido.
ECHO.

ECHO [PASSO 2 de 7] Limpando cache DNS...
ipconfig /flushdns
ECHO    -> Concluido.
ECHO.

ECHO [PASSO 3 de 7] Limpando cache de miniaturas do Explorer...
del /A:H /F /S /Q "%LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db" > NUL 2>&1
ECHO    -> Concluido.
ECHO.

ECHO [PASSO 4 de 7] Limpando arquivos de prefetch...
del /F /S /Q C:\Windows\Prefetch\*.* > NUL 2>&1
ECHO    -> Concluido.
ECHO.

ECHO [PASSO 5 de 7] Limpando cache de atualizacoes do Windows...
net stop wuauserv > NUL 2>&1
net stop bits > NUL 2>&1
del /f /s /q %windir%\SoftwareDistribution\Download\*.* > NUL 2>&1
net start wuauserv > NUL 2>&1
net start bits > NUL 2>&1
ECHO    -> Concluido.
ECHO.

ECHO [PASSO 6 de 7] Limpando cache do Microsoft Edge...
del /F /S /Q "%LocalAppData%\Microsoft\Edge\User Data\Default\Cache\*.*" > NUL 2>&1
del /F /S /Q "%LocalAppData%\Microsoft\Edge\User Data\Default\Code Cache\*.*" > NUL 2>&1
ECHO    -> Concluido.
ECHO.

ECHO [PASSO 7 de 7] Limpando cache do Google Chrome...
del /F /S /Q "%LocalAppData%\Google\Chrome\User Data\Default\Cache\*.*" > NUL 2>&1
del /F /S /Q "%LocalAppData%\Google\Chrome\User Data\Default\Code Cache\*.*" > NUL 2>&1
ECHO    -> Concluido.
ECHO.

ECHO ---------------------------------------
ECHO.
ECHO    LIMPEZA COMPLETA FINALIZADA COM SUCESSO!
ECHO.
PAUSE
GOTO menu_principal

:limpar_zebra
CLS
ECHO =======================================
ECHO      LIMPEZA DA FILA DE IMPRESSAO
ECHO =======================================
ECHO.
PAUSE
CLS

ECHO [PASSO 1 de 3] Parando o servico de Spooler de Impressao...
net stop spooler
ECHO.

ECHO [PASSO 2 de 3] Apagando arquivos temporarios da fila...
del /Q /F %systemroot%\System32\spool\PRINTERS\*.*
ECHO.

ECHO [PASSO 3 de 3] Reiniciando o servico de Spooler de Impressao...
net start spooler
ECHO.
ECHO ---------------------------------------
ECHO.
ECHO A fila de impressao foi limpa com sucesso!
ECHO.
PAUSE
GOTO menu_principal


:windows_update
CLS
ECHO ====================================================
ECHO        ABRINDO A TELA DE ATUALIZACOES DO WINDOWS
ECHO ====================================================
ECHO.
ECHO A tela de configuracoes do Windows Update sera aberta.
ECHO.
ECHO Pressione qualquer tecla para voltar ao menu principal.
ECHO.

start ms-settings:windowsupdate

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
