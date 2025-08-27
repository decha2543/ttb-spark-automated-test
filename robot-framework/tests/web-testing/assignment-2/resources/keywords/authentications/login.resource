*** Settings ***
Resource    ../../global-suite-settings.resource


*** Keywords ***
Login
    [Arguments]    ${userIndex}    ${passwordIndex}
    
    Input Username    ${userIndex}
    Input Password    ${passwordIndex}
    Click Login Button

Input Username
    [Arguments]    ${index}
    
    ${username}=    Get List Env    USERNAME
    Fill Text    input[name="username"]    ${username}[${index}]

Input Password
    [Arguments]    ${index}
    
    ${password}=    Get List Env    PASSWORD
    Fill Text    input[name="password"]    ${password}[${index}]

Click Login Button
    Click    button[type="submit"]
