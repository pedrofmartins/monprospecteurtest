*** Settings ***
Resource            ../resources/Resource.robot
Resource            ../resources/PageObjects/PublicArea_PO.robot
Resource            ../resources/PageObjects/RestrictedArea_PO.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador


*** Test Case ***

ct_alert_creation_0001: First Alert Creation - Only mandatory items
        Go to MP home
        Insert "pedro@monprospecteur.com" and "mp"
        View "Mes alertes" and access it
        Create new alert at "Montreal"

ct_alert_creation_0002: Second Alert Creation - All Items
        Go to MP home
        Insert "pedro@monprospecteur.com" and "mp"
        View "Mes alertes" and access it
        Create new alert in "Quebec"