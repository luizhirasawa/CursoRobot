*** Settings ***
Resource           ../resources/main.robot
Test Setup         Acesso o Organo
Test Teardown      Fechar o navegador


*** Test Cases ***
Verifica criação do card de time
    Preencho o form
    Clico para criar o card
    E verifico se o card está no time esperado

Verifica se há multiplos membros de time
    Crio 3 integrantes do time

Verifica se é possível criar vários cards em cada time
    Criar 1 card em cada time
