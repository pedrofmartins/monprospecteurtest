*** Settings ***
Library         SeleniumLibrary


*** Variable ***
${PUBLICAREA_URL}                       https://app.test-mp.fun/auth.html#/connexion
${BROWSE}                               chrome

*** Keywords ***
#### Setup & Teardown

Abrir navegador
        Open Browser       ${PUBLICAREA_URL}       ${BROWSE}
        Maximize Browser Window

Fechar navegador
        Capture Page Screenshot 
        Close Browser
