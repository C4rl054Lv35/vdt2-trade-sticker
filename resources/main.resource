*** Settings ***
Documentation        Arquivo Principal do projeto

Library     Browser

Resource    pages/login.resource
Resource    pages/dash.resource

*** Keywords ***

Do Login
    Go to Login Page
    Submit Credenciais    papito@gmail.com    vaibrasil
    User Logged In

Start Test
    New Browser    headless=False   

Finish Test
    Sleep                         1
    Take Screenshot


*** Variables ***
${header_title}    Aquela figurinha incrível a um clique de distância.
${Base_URL}        https://trade-sticker-dev.vercel.app


