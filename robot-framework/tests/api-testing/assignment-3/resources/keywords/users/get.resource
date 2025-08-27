*** Settings ***
Resource    ../../global-suite-settings.resource


*** Keywords ***
Get User By ID
    [Arguments]    ${id}

    ${response}=    GET On Session    reqres_session    /${id}    expected_status=any
    RETURN    ${response.json()}
