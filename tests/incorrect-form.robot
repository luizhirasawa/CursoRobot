*** Settings ***
Resource           ../resources/main.robot
Test Setup         Acesso o Organo
Test Teardown      Fechar o navegador


*** Test Cases ***
Verifica criação do card de time
    Clico para criar o card
    E verifo se o campo de erro retorna corretamente