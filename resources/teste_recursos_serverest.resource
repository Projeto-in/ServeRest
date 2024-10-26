*** Settings ***
Library     SeleniumLibrary 

*** Variables ***
# Passo 1
${URL}    https://front.serverest.dev/login
# Passo 2
${cadastreseLink}    //a[@data-testid='cadastrar'][contains(.,'Cadastre-se')]
# Passo 3 - Localizar o elemnto
${nomeInput}                 //input[contains(@name,'nome')]
${emailInput}               //input[contains(@name,'email')]
${senhaInput}               //input[contains(@name,'password')]
${administradorChecbox}     //input[contains(@name,'administrador')]
${cadastrarButton}          //button[@data-testid='cadastrar'][contains(.,'Cadastrar')]

*** Keywords ***
#Escolher um navegador

# Pre-passo do meu cesario. Antes do passo vai acontecer isso de abrir o navegador e maximizar
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window  

Fechar o navegador
    Close Browser

Passo 1: Acessar a pagina de login ServeRest
    #Escolher onde sera aberto
    Go To    url=${URL}

Passo 2: Clicar em cadastra-se
    #Capturar elementos da pagina
    Wait Until Element Is Visible    locator=${cadastreseLink}
    Click Element                    locator=${cadastreseLink}
    # faz uma chegacgem se o botao apareceu

Passo 3: Digitar um nome
    Wait Until Element Is Visible    locator=${nomeInput}
    Input Text                       locator=${nomeInput}   text=Teste#Wayslan C Miranda
    Sleep    3s
    # Colocado um pequeno delei de 3 segundos

Passo 4: Digitar um email
    Wait Until Element Is Visible    locator=${emailInput}
    Input Text                       locator=${emailInput}   text=Teste#Wayslan.33@outlook.com
    Sleep    3s
   
Passo 5: Digitar uma senha
    Wait Until Element Is Visible    locator=${senhaInput}
    Input Password                   locator=${senhaInput}   password=12345@
    Sleep    3s

Passo 6: Escolher perfil de usuário administrador
    Wait Until Element Is Visible    locator=${administradorChecbox}
    Select Checkbox                  locator=${administradorChecbox}
    Sleep    3s
    
Passo 7: Clicar em cadastrar
    Wait Until Element Is Visible    locator=${cadastrarButton}
    Click Button                     locator=${cadastrarButton}
    Sleep    3s
