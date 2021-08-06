*** Settings ***
Library                 SeleniumLibrary

Resource                ./Variables.robot
Resource                ./Actions.robot


*** Keywords ***
#Abrindo o navegador
Open initial url
    Open Browser       ${Url}    Chrome
    Maximize Browser Window
    
Register in API
#Iniciar registro
    Click             ${Button_Register}
    Write Text        ${Field_Nome}            Cassio Junior
    Write Text        ${Field_Email_Register}  cassiojunior1999@gmail.com

#Verificar E-mail

Login in API
#Realizando login no site
    Click             ${Button_Login}
    Write Text        ${Field_Email_Login}      cassiojunior1999@gmail.com
    Write Text        ${Field_Password}         12345678
    Click             ${Button_Confirm_Login}

Navegate and get new Key
#Navegando no sistema até minha conta
    Click            ${Button_Options}
    Click            ${Button_MyAccount}        My Account

Gerar uma nova chave
    Click            ${Button_Create_Key}
