*** Settings ***
Library         SeleniumLibrary


*** Variable ***
${PUBLICAREA_URL}                       https://app.test-mp.fun/auth.html#/connexion
${USER}                                 pedro@monprospecteur.com
${PASS}                                 mp
${ENTEREMAIL}                           name:userid
${ENTERPASS}                            name:password
${CONTINUAR}                            css:button.btn

*** Keywords ***

###################################### Português ######################################

Go to MP home
        Wait Until Page Contains                Commençons                                 60
        Wait Until Element Is Visible           ${ENTEREMAIL}

Insert "${USER}" and "${PASS}"
        Input text              ${ENTEREMAIL}           ${USER}                    10
        Input text              ${ENTERPASS}            ${PASS}                    10     
        Click Button            ${CONTINUAR}