*** Settings ***
Resource    ../../global-suite-settings.resource


*** Keywords ***
Get Specific Text
    [Arguments]    ${locator}    ${text}

    ${locator}=    Replace String    ${locator}    _{}_    ${text}
    RETURN    ${locator}

Click To Do Item
    [Arguments]    ${text}

    ${locator}=    Get Specific Text    ${todo_item}    ${text}
    Tap    ${locator}
    Validate Add Todo Page

Get Date Field
    ${date_text}=    Get Text    ${date_select}
    ${time_text}=    Get Text    ${time_select}
    RETURN    ${date_text}    ${time_text}
