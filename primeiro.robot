*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Abrir navegador e acessar o Organo

    Open Browser    url=http://localhost:3000/    browser=Chrome

Preencher os campos do formulario

    Input Text    id:form-nome    Luiz
    Input Text    id:form-cargo    Dev
    Input Text    id:form-imagem    https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiTpGe0BA_H9WIGg6c4MFbRzEK8plY_TzlSZmeaYNaBwD9E4N1WvqikivAjTFQ0vvSJ0GhjTR8wvfxqhx94pFWIm5fJ-GQWQZAnWp7ZBgbAEX3P-pgjestQyLzrOffA55lXwF9XqFVv_MeLueL9UvUIOBXBbsUMpJ7lBk_7JWHyDnQyFam6G1Yk9H6M3HI/s280/__atri_atri_my_dear_moments_drawn_by_nodoameyatou__sample-1b81ee58222b3b697dcc2e87d343751b.png
    Click Element    class:lista-suspensa
    Click Element    //option[contains(.,'Programação')]
    Sleep    10s
    Click Element    id:form-botao
    Element Should Be Visible    class:colaborador
    Sleep    5s