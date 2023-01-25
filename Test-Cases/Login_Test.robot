*** Settings ***
Resource    ../Resources/Login_Keyword.robot
Test Setup    Ouvrir le navigateur    ${URL}   ${BROWSER}
Test Teardown   Fermer le navigateur
Suite Setup    Log To Console    J'Execute avant tous les tests
Suite Teardown    log To Console     J'Execute après tous les tests
*** Variables ***
${URL}=    https://admin-demo.nopcommerce.com/
${BROWSER}=    chrome
${USERNAME}=    admin@yourstore.com    
${PASSWORD}=    admin

*** Test Cases ***
Login_test01
  #Given Ouvrir le navigateur    ${URL}   ${BROWSER}
   When Saisir le Nom utilisateur    ${USERNAME}
   And Saisir le Mot de Passe    ${PASSWORD}
   And Cliquer sur le boutton Login
   Then Valider que le mot Dashboard s'affiche
  #And Fermer le navigateur
Login_test02
   When Saisir le Nom utilisateur    ${USERNAME}
   And Saisir le Mot de Passe    ${PASSWORD}
   And Cliquer sur le boutton Login
   Then Valider que le mot Dashboard s'affiche