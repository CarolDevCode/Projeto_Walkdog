*** Settings ***
Documentation    Suíte de testes da página principal
Library          SeleniumLibrary

*** Test Cases ***    
Webapp deve estar online
    Open Browser           https://walkdog.vercel.app    firefox
    Title Should Be        Walkdog by Papito
    Page Should Contain    Cuidado e diversão em cada passo
    Click Element          //*[@id="page-home"]/div[1]/main/a/span           
    
    # Temporário
    Sleep    5
    Close Browser