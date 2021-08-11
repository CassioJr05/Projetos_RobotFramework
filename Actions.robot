*** Settings ***
Library                 SeleniumLibrary



*** Keywords ***
Click
    [Arguments]                      ${element}     
    
    Wait Until Element Is Visible    ${element}     15s
    Click element                    ${element}


Write Text
    [Arguments]                      ${element}     ${Text}     

    Wait Until Element Is Visible    ${element}     15s      
    Input Text                       ${element}     ${Text}