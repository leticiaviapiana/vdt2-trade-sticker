*** Settings ***
Documentation   Login tests
Library     Browser

*** Test Cases ***
Deve exibir mensagem ao tentar logar com usuário não autorizado
    New Browser     headless=False
    New Page        https://trade-sticker-dev.vercel.app

    Fill Text       css=input[name=email]       leticiaviapiana@gmail.com
    Fill Text       css=input[name=password]    vaibrasil
    Click           text=Entrar

    Get Text        css=.Toastify__toast-body    contains    Credenciais inválidas, tente novamente!

    Sleep           1