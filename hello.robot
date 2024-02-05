*** Settings ***
Documentation     Teste simples de Hello, World!
Library           OperatingSystem

*** Variables ***
${EXPECTED_TEXT}    Hello, World!

*** Test Cases ***
HelloWorldTest
    ${actual_text}=    Set Variable    Hello, World!
    Should Be Equal As Strings    ${actual_text}    ${EXPECTED_TEXT}
