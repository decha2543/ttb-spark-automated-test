*** Settings ***
Resource    ../../global-suite-settings.resource


*** Keywords ***
Validate Add Todo Page
    Element Should Be Visible    ${todo_input}
    Element Should Be Visible    ${close_button}

Validate Remind Me Message
    [Arguments]    ${validate_date}    ${validate_time}

    ${today}=    Set Variable    ${validate_date}
    IF    "${validate_date}"=="Today"
        ${today}=    Get Current Date    result_format=%d %b, %Y
    END
    ${full_date}=    Get Specific Text    ${remind_overview_text}    ${today},${SPACE}${validate_time}
    Element Should Be Visible    ${full_date}
