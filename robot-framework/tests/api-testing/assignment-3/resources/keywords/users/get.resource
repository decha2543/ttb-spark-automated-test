*** Settings ***
Resource    ../../global-variable.resource
Resource    ${resources}/global-library.resource


*** Keywords ***
Get User By ID
    [Arguments]    ${id}
    
    ${response}=    GET On Session    reqres_session    /${id}    expected_status=any
    RETURN    ${response.json()}
