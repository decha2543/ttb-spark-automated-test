*** Settings ***
Resource    ../../global-variable.resource
Resource    ${resources}/global-library.resource


*** Keywords ***
Click Add Todo Button
    Tap    ${add_button}
    Validate Add Todo Page

Input Todo Name
    [Arguments]    ${text}

    Clear Text    ${todo_input}
    Input Text    ${todo_input}    ${text}
    Hide Keyboard

Submit Add Todo Item
    Tap    ${submit_add_todo_button}
    Validate Home Page
