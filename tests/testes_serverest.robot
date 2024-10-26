*** Settings ***
#Traz informações para o test
Resource     ../resources/teste_recursos_serverest.resource
Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador
# Abrir e Fechar somente uma vez

*** Test Cases ***

Cenario de teste: Cadastro de usuario administrador
    Passo 1: Acessar a pagina de login ServeRest 
    Passo 2: Clicar em cadastra-se
    Passo 3: Digitar um nome
    Passo 4: Digitar um email
    Passo 5: Digitar uma senha
    Passo 6: Escolher perfil de usuário administrador
    Passo 7: Clicar em cadastrar 