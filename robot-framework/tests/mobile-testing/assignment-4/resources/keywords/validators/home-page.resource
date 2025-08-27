*** Settings ***
Resource    ../../global-variable.resource
Resource    ${resources}/global-library.resource


*** Keywords ***
Validate Home Page
    Element Should Be Visible    ${app_title}

Validate Todo Item
    [Arguments]    ${validate_text}

    ${specific_todo}=    Get Specific Todo Item    ${validate_text}
    Element Should Be Visible    ${specific_todo}

Validate Count Todo Item
    [Arguments]    ${expected_count}

    ${count}=    Get Element Count    ${all_todo_item}
    Should Be Equal As Integers    ${count}    ${expected_count}

Validate Todo Item Empty
    Element Should Be Visible    ${empty_todo_item}
