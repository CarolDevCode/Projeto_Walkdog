*** Settings ***

Resource    ${EXECDIR}/resources/base.resource

Test Setup       Start session
Test Teardown    Finish session


*** Test Cases ***
Cadastro do Dog Walker com sucesso
    [Tags]    Cadastro
    
    Fill signup form    John Doe    carolbaron.leite@gmail.com    22923243005    06330080    118    Perto do Rossi
    Submit signup form 
    Popup have text     Recebemos o seu cadastro e em breve retornaremos o contato.
    

CPF Incorreto 
    [Tags]    cpf_inv
    
    Fill signup form    John Doe    carolbaron.leite@gmail.com    2292324300a    06330080    118    Perto do Rossi
    Submit signup form 
    Alert have text     CPF inválido
   

Email Incorreto 
    [Tags]    email_inv
    
    Fill signup form    John Doe    carolbaron.leite_gmail.com    22923243005    06330080    118    Perto do Rossi
    Submit signup form 
    Alert have text     Informe um email válido
    

Campos Obrigatórios 
    [Tags]    campos_obg
    
    Submit signup form
    Alert have text    Informe o seu nome completo
    Alert have text    Informe o seu melhor email
    Alert have text    Informe o seu CPF
    Alert have text    Informe o seu CEP
    Alert have text    Informe um número maior que zero
    Alert have text    Adcione um documento com foto (RG ou CHN)

   