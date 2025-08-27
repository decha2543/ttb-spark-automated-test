*** Settings ***
Resource    ../../global-suite-settings.resource


*** Keywords ***
Validate Landing Page
    ${base_url}=    Get Data Env    BASE_URL

    ${title}=    Get Title
    Should Be Equal As Strings    ${title}    The Internet

    ${url}=    Get Url
    Should Be Equal As Strings    ${url}    ${base_url}/login

    Get Element By    Text    Login Page

Validate Logout Message
    ${base_url}=    Get Data Env    BASE_URL

    ${url}=    Get Url
    Should Be Equal As Strings    ${url}    ${base_url}/login

    Get Element By    Text    You logged out of the secure area!

Validate Login Failed By
    [Arguments]    ${type}
    
    IF    '${type}' == 'USERNAME'
        Get Element By    Text    Your username is invalid!
    ELSE IF    '${type}' == 'PASSWORD'
        Get Element By    Text    Your password is invalid!
    END
