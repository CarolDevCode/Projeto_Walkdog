*** Settings ***
Documentation    Arquivo que representa a página de cadastro com ações e elementos
Library    SeleniumLibrary

*** Keywords ***
Fill signup form
    [Arguments]     ${NomeCompleto}    ${Email}    ${CPFCorreto}    ${CEP}    ${Numero}    ${Complemento}     

    Input Text                   css=input[name="name"]            ${NomeCompleto}
    Input Text                   css=input[name="email"]           ${Email}
    Input Text                   css=input[name="cpf"]             ${CPFCorreto}
    Input Text                   css=input[name="cep"]             ${CEP}
    Input Text                   css=input[name="addressNumber"]   ${Numero}
    Input Text                   css=input[name="addressDetails"]  ${Complemento}    
    Click Button                 xpath=//*[@id="page-walker"]/form/fieldset[2]/div[2]/div[2]/input
    Choose File                  css=input[type="file"]            ${EXECDIR}\\fixtures\\document.png

Submit signup form
    Click Button                 xpath=/html/body/div/div/form/button
   
Popup have text
    [Arguments]    ${expected_text}

    ${imgCorrectSignUp}    Set Variable    xpath=//*[@id="swal2-html-container"]

    Wait Until Element Is Visible    ${imgCorrectSignUp}    5
    Element Should Contain           ${imgCorrectSignUp}    ${expected_text}
    
Alert have text
    [Arguments]    ${expected_text}

    ${element}    Set Variable    xpath=//*[contains(text(),'${expected_text}')]

    Wait Until Element Is Visible    ${element}    5
    Capture Element Screenshot       ${element}
