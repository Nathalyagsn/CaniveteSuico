# Canivete Suíço

![Status](https://img.shields.io/badge/status-em_desenvolvimento-yellow)
![Plataforma](https://img.shields.io/badge/plataforma-Windows-blue)

Um script de automação (`.bat`) focado em agilizar tarefas comuns de suporte e manutenção de TI em ambientes Windows. Criado para centralizar ferramentas úteis em um menu interativo, facilitando a vida do técnico de suporte ou entusiasta.

## Índice

* [O que é?](#o-que-é)
* [Funcionalidades Principais](#funcionalidades-principais)
* [Como Usar](#como-usar)
* [Pré-requisitos](#pré-requisitos)
* [Como Contribuir](#como-contribuir)
* [Autor](#autor)

---

## O que é?

Este projeto é um "Canivete Suíço" para técnicos de suporte e estagiários de TI. A ideia é ter, em um único arquivo `.bat`, um menu de acesso rápido para as tarefas mais repetitivas do dia a dia, como instalar softwares, limpar caches, diagnosticar problemas de rede ou hardware.

## Funcionalidades Principais

O menu principal oferece acesso rápido às seguintes ferramentas:

* ** `[1]` Instalar Softwares:**
    * Abre um submenu para instalação silenciosa e automática (via `winget`) de aplicativos essenciais:
    * `Google Chrome`, `Adobe Reader`, `WinRar`, `Teams`, `AnyDesk`, `K-Lite Codec Pack` e `Revo Uninstaller`.

* ** `[2]` Abrir Bloco de Notas:**
    * Inicia o `notepad.exe`. Simples e rápido.

* ** `[3] ` Verificar Windows Update:**
    * Abre diretamente a tela de configurações do Windows Update (`ms-settings:windowsupdate`).

* ** `[4]` Limpar Fila de Impressão:**
    * Resolve problemas de "documento preso". O script para, limpa e reinicia o serviço de Spooler de Impressão.

* ** `[5]` Limpeza de Arquivos:**
    * Executa uma rotina de limpeza que inclui:
        * Arquivos temporários (`%TEMP%`, `%SystemRoot%\Temp`)
        * Cache de DNS (`ipconfig /flushdns`)
        * Cache de miniaturas do Explorer
        * Arquivos de Prefetch
        * Cache de download do Windows Update
        * Cache do Google Chrome e Microsoft Edge

* ** `[6]` Visualizar Frequência da RAM:**
    * Exibe a velocidade (em MHz) e o slot de cada pente de memória RAM instalado.

* ** `[7] ` Relatório da Bateria:**
    * Gera o relatório completo de saúde da bateria usando `powercfg /batteryreport`.

* ** `[8]` Renovar Endereço IP:**
    * Executa a sequência `flushdns`, `release` e `renew` para solucionar problemas de conectividade.

* ** `[9]` Ver Service Tag:**
    * Mostra o **Número de Série (Serial Number)** da BIOS. Essencial para abrir chamados de garantia (Dell, HP, Lenovo, etc.).

---

##  Como Usar

1.  Faça o download ou clone este repositório.
2.  Clique com o botão direito no arquivo `CaniveteSuico.bat` (ou o nome que você deu).
3.  Selecione **"Executar como administrador"**.

>  **Atenção:** Executar como administrador é **essencial** para que a instalação de softwares, limpeza de cache e gerenciamento de serviços (como o de impressão) funcionem corretamente.

---

##  Pré-requisitos

* **Sistema:** Windows 10 (versão 1809 ou superior) ou Windows 11.
* **Permissões:** Privilégios de Administrador.
* **Dependência:** O **Gerenciador de Pacotes do Windows (`winget`)** deve estar instalado para a funcionalidade `[1] Instalar Softwares`.
    * *Normalmente, ele já vem instalado. Se não funcionar, abra a `Microsoft Store`, procure por `Instalador de Aplicativo` e clique em "Atualizar".*

---

##  Como Contribuir

Sinta-se à vontade para abrir uma **Issue** para sugerir novas funcionalidades ou reportar bugs.

Se quiser adicionar uma nova ferramenta ao canivete:
1.  Faça um **Fork** deste repositório.
2.  Crie uma nova *Branch* (`git checkout -b feature/sua-feature`).
3.  Adicione seu código e faça o *Commit* (`git commit -m 'Adiciona nova feature'`).
4.  Faça o *Push* para a *Branch* (`git push origin feature/sua-feature`).
5.  Abra um **Pull Request**.

---

##  Autor

Projeto desenvolvido por **Nathalya Nascimento**.

[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/nathalyagsn)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.in/in/nathalya-gsn/)
