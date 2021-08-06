*** Settings ***
Library                    SeleniumLibrary

Resource                   ./Resources/Variables.robot
Resource                   ./Resources/Actions.robot
Resource                   ./Resources/Keywords.robot


*** Tasks ***
Inicio do Processo
    Open initial url 
    #Register in API
    Login in API

Gerar nova chave no sistema
    Navegate and get new Key
