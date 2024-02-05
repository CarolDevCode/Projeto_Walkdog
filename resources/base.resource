*** Settings ***
Documentation    Tudo começa aqui
Library          SeleniumLibrary  

Resource         pages/SignupPage.robot

*** Variables ***
${URL}                   https://walkdog.vercel.app/signup
${Browser}               headlessfirefox


*** Keywords ***
Start session
    Open Browser    ${URL}    ${Browser}
Finish session
    Capture Page Screenshot      
    Close Browser