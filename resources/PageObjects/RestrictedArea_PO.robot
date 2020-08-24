*** Settings ***
Library         SeleniumLibrary


*** Variable ***
${MESALERTES}                           document.evaluate('//*[@href="#/alerts"]', document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
${CREERNOUVELLEALERTE}                  id:create_alert_button
${CITY}                                 id:city       
${DUPLEX}                               xpath:/html/body/div[2]/div[3]/div[1]/div/aside/section/div/div/div[2]/form/div[2]/div[1]/div/div[3]/label       
${60DAYS}                               xpath:/html/body/div[2]/div[3]/div[1]/div/aside/section/div/div/div[2]/form/div[2]/div[2]/div/div/div[2]/label
${ALERTNAME}                            id:alertName
${INITIALDATE}                          xpath:/html/body/div[2]/div[3]/div[1]/div/aside/section/div/div/div[2]/form/div[2]/div[3]/div[1]/div/div/div[2]/div/select/option[4]
${ENDDATE}                              xpath:/html/body/div[2]/div[3]/div[1]/div/aside/section/div/div/div[2]/form/div[2]/div[3]/div[1]/div/div/div[4]/div/select/option[2]
${INITIALVALUE}                         xpath:/html/body/div[2]/div[3]/div[1]/div/aside/section/div/div/div[2]/form/div[2]/div[3]/div[2]/div/div/div/div[2]/div/select/option[2]
${ALERTSUBMIT}                          id:button_submit_placeholder
${AND}                                  xpath://*[@id="main-body-content"]/div/aside/section/div/div/div[2]/form/div[3]/div[4]/fieldset/div[1]/div/div[3]/div[2]/div/select/option[2]
${SUPERIOR}                             xpath://*[@id="main-body-content"]/div/aside/section/div/div/div[2]/form/div[3]/div[4]/fieldset/div[1]/div/div[3]/div[3]/div/input
${MARCHAND}                             xpath://*[@id="main-body-content"]/div/aside/section/div/div/div[2]/form/div[3]/div[4]/fieldset/div[2]/div/div/div/div[2]/div/input
${INDEX}                                xpath://*[@id="main-body-content"]/div/aside/section/div/div/div[2]/form/div[3]/div[4]/fieldset/div[3]/div/div[1]/div/div/label

*** Keywords ***

View "${MYALERTS}" and access it
        Wait Until Page Contains                Mes alertes                                                 15    
        Execute Javascript                      ${MESALERTES}        

Create new alert at "${MONTREAL}"
        Wait Until Element Is Enabled           ${CREERNOUVELLEALERTE}
        Click Element                           ${CREERNOUVELLEALERTE}                
        Wait Until Element Is Visible           ${CITY}                                                     10  
        Input text                              ${CITY}                         ${MONTREAL}                    10
        Click Element                           ${CREERNOUVELLEALERTE}
        Wait Until Element Is Visible           ${ALERTNAME}
        Click Element                           ${DUPLEX}
        Click Element                           ${60DAYS}
        Input text                              ${ALERTNAME}                    Teste22
        Click Element                           ${INITIALDATE}
        Click Element                           ${ENDDATE}
        Click Element                           ${INITIALVALUE}
        Click Button                            ${ALERTSUBMIT}
        Wait Until Page Contains                Teste22

Create new alert in "${QUEBEC}"
        Wait Until Element Is Enabled           ${CREERNOUVELLEALERTE}
        Click Element                           ${CREERNOUVELLEALERTE}                
        Wait Until Element Is Visible           ${CITY}                                                     10  
        Input text                              ${CITY}                         ${QUEBEC}                    10
        Click Element                           ${CREERNOUVELLEALERTE}
        Wait Until Element Is Visible           ${ALERTNAME}
        Click Element                           ${DUPLEX}
        Click Element                           ${60DAYS}
        Input text                              ${ALERTNAME}                    Teste33
        Click Element                           ${AND}
        Input text                              ${SUPERIOR}                     50000
        Input text                              ${MARCHAND}                     50
        Click Element                           ${INDEX}
        Click Element                           ${INITIALDATE}
        Click Element                           ${ENDDATE}
        Click Element                           ${INITIALVALUE}
        Click Button                            ${ALERTSUBMIT}
        Wait Until Page Contains                Teste33