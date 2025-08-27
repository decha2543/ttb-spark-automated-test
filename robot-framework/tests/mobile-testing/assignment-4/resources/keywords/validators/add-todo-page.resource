*** Settings ***
Resource    ../../global-variable.resource
Resource    ${resources}/global-library.resource


*** Keywords ***
Validate Add Todo Page
    Element Should Be Visible    ${todo_input}
    Element Should Be Visible    ${close_button}

Validate Error Message
