*** Settings ***
Resource    ../../global-suite-settings.resource


*** Keywords ***
Validate Secure Page
    ${base_url}=    Get Data Env    BASE_URL

    ${url}=    Get Url
    Should Be Equal As Strings    ${url}    ${base_url}/secure

    Get Element By    Text    You logged into a secure area!
