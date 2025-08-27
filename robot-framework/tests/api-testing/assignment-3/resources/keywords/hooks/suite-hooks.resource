*** Settings ***
Resource    ../../global-suite-settings.resource


*** Keywords ***
Suite Startup
    ${base_url}=    Get Data Env    BASE_URL
    ${headers}=    Create Dictionary    x-api-key=reqres-free-v1
    Create Session    reqres_session    ${BASE_URL}    headers=${headers}
