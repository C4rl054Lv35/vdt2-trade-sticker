*** Settings ***
Documentation    Login tests

Resource    ${EXECDIR}/resources/main.resource

Test Setup       Start Test
Test Teardown    Finish Test

*** Test Cases ***
Deve logar com sucesso
    Go To Login Page
    Submit Credenciais    papito@gmail.com    vaibrasil
    User Logged In

Não deve logar com senha incorreta
    Go to Login Page
    Submit Credenciais            papito@gmail.com         123456
    Toast Message Should Be       Credenciais inválidas, tente novamente!

Deve exibir notificação toaster se a senha não for preenchida
    Go to Login Page
    Submit Credenciais Password Null           papito@gmail.com
    Toast Message Should Be       Por favor, informe a sua senha secreta!

Deve exibir notificação toaster se o email não for preenchido
    Go to Login Page
    Submit Credenciais Email Null           papito@gmail.com
    Toast Message Should Be    Por favor, informe o seu email!

Deve exibir notiticação toaster se email e senha não forem preenchidos
    Go to Login Page
    Click          css=button >> text=Entrar
    Toast Message Should Be    Por favor, informe suas credenciais!
     





