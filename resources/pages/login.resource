*** Settings ***
Documentation    Login Page

Library    Browser


*** Keywords ***
Go to Login Page
    New Page       ${Base_URL}

Submit Credenciais
    [Arguments]    ${email}    ${password}
    Fill Text      css=input[name=email]           ${email}
    Fill Text      css=input[name=password]        ${password}
    Click          css=button >> text=Entrar

Toast Message Should Be
    [Arguments]           ${expected_message}

    ${locator}     
    ...            Set Variable    
    ...            css=.Toastify__toast-body div >> text=${expected_message}

    Wait For Elements State    ${locator}    visible     3

Submit Credenciais Password Null
    [Arguments]    ${*}    
    Fill Text      css=input[name=email]           ${*}
    Click          css=button >> text=Entrar

Submit Credenciais Email Null
    [Arguments]    ${*}    
    Fill Text      css=input[name=password]           ${*}
    Click          css=button >> text=Entrar
