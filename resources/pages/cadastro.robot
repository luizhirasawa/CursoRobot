*** Settings ***
Library            SeleniumLibrary
Library            FakerLibrary        locale=pt_BR
    
*** Variables ***
${c_NOME}      id:form-nome
${c_CARGO}     id:form-cargo
${c_IMAGEM}    id:form-imagem
${c_TIME}      class:lista-suspensa
${c_CARD}      id:form-botao 
${c_ERRO}      id:form-nome-erro
${c_ERRO_C}      id:form-cargo-erro
${c_ERRO_T}      id:form-times-erro
@{Selector_teams}
...    //option[contains(.,'Programação')]
...    //option[contains(.,'Front-End')]
...    //option[contains(.,'Data Science')]
...    //option[contains(.,'Devops')]
...    //option[contains(.,'UX e Design')]
...    //option[contains(.,'Mobile')]
...    //option[contains(.,'Inovação')]

*** Keywords ***

Preencho o form
    ${name}      FakerLibrary.First Name
    Input Text    ${c_NOME}    ${name}
    ${cargo}     FakerLibrary.Job    
    Input Text    ${c_CARGO}    Dev
    Input Text    ${c_IMAGEM}    https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiTpGe0BA_H9WIGg6c4MFbRzEK8plY_TzlSZmeaYNaBwD9E4N1WvqikivAjTFQ0vvSJ0GhjTR8wvfxqhx94pFWIm5fJ-GQWQZAnWp7ZBgbAEX3P-pgjestQyLzrOffA55lXwF9XqFVv_MeLueL9UvUIOBXBbsUMpJ7lBk_7JWHyDnQyFam6G1Yk9H6M3HI/s280/__atri_atri_my_dear_moments_drawn_by_nodoameyatou__sample-1b81ee58222b3b697dcc2e87d343751b.png
    Click Element    ${c_TIME}
    Click Element    ${Selector_teams[1]}

Clico para criar o card
    Click Element    ${c_CARD}

E verifico se o card está no time esperado
    Element Should Be Visible    class:colaborador
    Sleep    5s

Crio 3 integrantes do time
    FOR    ${i}    IN RANGE    1    3
        Preencho o form
        Clico para criar o card
    END
    Sleep    5s

Criar 1 card em cada time
    FOR    ${index}    ${element}    IN ENUMERATE    @{Selector_teams}
        ${name}      FakerLibrary.First Name
        Input Text    ${c_NOME}    ${name}
        ${cargo}     FakerLibrary.Job    
        Input Text    ${c_CARGO}    Dev
        Input Text    ${c_IMAGEM}    https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiTpGe0BA_H9WIGg6c4MFbRzEK8plY_TzlSZmeaYNaBwD9E4N1WvqikivAjTFQ0vvSJ0GhjTR8wvfxqhx94pFWIm5fJ-GQWQZAnWp7ZBgbAEX3P-pgjestQyLzrOffA55lXwF9XqFVv_MeLueL9UvUIOBXBbsUMpJ7lBk_7JWHyDnQyFam6G1Yk9H6M3HI/s280/__atri_atri_my_dear_moments_drawn_by_nodoameyatou__sample-1b81ee58222b3b697dcc2e87d343751b.png
        Click Element    ${c_TIME}
        Click Element    ${element}
        
    END
    Sleep    5s

E verifo se o campo de erro retorna corretamente
    Element Should Be Visible    ${c_ERRO}
    Element Should Be Visible    ${c_ERRO_C}
    Element Should Be Visible    ${c_ERRO_T}
    Sleep    5s