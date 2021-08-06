*** Settings ***
Library                 SeleniumLibrary



*** Keywords ***
Click
    [Arguments]                      ${element}
    
    Wait Until Element Is Visible    ${element}    15

    Click element                    ${element}


Write Text
    [Arguments]                      ${element}  ${Text}

    Wait Until Element Is Visible    ${element}    15
                    
    Input Password                   ${element}  ${Text}