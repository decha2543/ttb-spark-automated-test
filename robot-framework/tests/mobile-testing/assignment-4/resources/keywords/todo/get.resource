*** Settings ***
Resource    ../../global-variable.resource
Resource    ${resources}/global-library.resource


*** Keywords ***
Get Specific Todo Item
    [Arguments]    ${text}

    ${capitalized}=    Convert To Title Case    ${text}
    ${locator}=    Set Variable    ${specific_todo_item.replace("_{}_", "${capitalized}")}
    RETURN    ${locator}

Click To Do Item
    [Arguments]    ${text}
    ${locator}=    Get Specific Todo Item    ${text}
    Tap    ${locator}
    Validate Edit Todo Page
