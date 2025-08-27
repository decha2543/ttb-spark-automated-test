*** Settings ***
Resource    ../../global-suite-settings.resource


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

Toggle Remind Me Switch
    Tap    ${remind_me_switch}

Select Year Field
    [Arguments]    ${selected_year}

    ${inner_year_select}=    Get Specific Text    ${remind_overview_text}    ${selected_year}
    Tap    ${date_select}
    Tap    ${date_select_inner_year}
    Tap    ${inner_year_select}
    Tap    ${date_select_ok_button}
