*** Settings ***
Resource    ../../global-suite-settings.resource


*** Keywords ***
Validate Home Page
    Element Should Be Visible    ${app_title}

Validate Todo Item
    [Arguments]    ${validate_text}

    ${specific_todo}=    Get Specific Text    ${todo_item}    ${validate_text}
    Element Should Be Visible    ${specific_todo}

Validate Todo Item Empty
    Element Should Be Visible    ${empty_todo_item}

Validate Todo Item With Reminder
    [Arguments]    ${validate_date}    ${validate_time}

    ${today}=    Set Variable    ${validate_date}
    IF    "${validate_date}"=="Today"
        ${today}=    Get Current Date    result_format=%b %d, %Y
    END
    ${full_date}=    Get Specific Text    ${remind_overview_text}    ${today}${SPACE}${SPACE}${validate_time}
    Element Should Be Visible    ${full_date}
