*** Settings ***
Library    SeleniumLibrary
Variables    ../Page_Object/Locators.py

*** Keywords ***
Ouvrir le navigateur
     [Arguments]    ${URL}    ${BROWSER}
     Open Browser   ${URL}    ${BROWSER}
     Maximize Browser Window

Saisir le Nom utilisateur
    [Arguments]    ${User}
    Input Text    ${txt_LoginUserName}     ${User}

Saisir le Mot de Passe
    [Arguments]    ${Pass}
    Input Text    ${txt_LoginPassword}     ${Pass}

Cliquer sur le boutton Login
    Click Button    ${btn_LoginBtn}

Valider que le mot Dashboard s'affiche
    Page Should Contain    Dashboard

Fermer le navigateur
    Sleep    3
    Close Browser
