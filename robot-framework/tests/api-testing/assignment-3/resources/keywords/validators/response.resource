*** Settings ***
Resource    ../../global-suite-settings.resource


*** Keywords ***
Validate Found User
    [Arguments]
    ...    ${response}
    ...    ${validate_id}
    ...    ${validate_email}
    ...    ${validate_first_name}
    ...    ${validate_last_name}
    ...    ${validate_avatar}
    
    Log To Console    ${response}
    Status Should Be    200
    Should Be Equal    ${response["data"]["id"]}    ${validate_id}
    Should Be Equal    ${response["data"]["email"]}    ${validate_email}
    Should Be Equal    ${response["data"]["first_name"]}    ${validate_first_name}
    Should Be Equal    ${response["data"]["last_name"]}    ${validate_last_name}
    Should Be Equal    ${response["data"]["avatar"]}    ${validate_avatar}

Validate Not Found User
    [Arguments]    ${response}
    
    Status Should Be    404
    Should Be Equal As Strings    ${response}    {}
