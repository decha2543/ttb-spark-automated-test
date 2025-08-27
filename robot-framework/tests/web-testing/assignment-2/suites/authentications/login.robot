*** Settings ***
Resource            ../../resources/global-suite-settings.resource

Test Setup          Run Keywords    Open Browser With Test Website
...                     AND    Validate Landing Page
Test Teardown       Close Browser With Test Website


*** Test Cases ***
TC001 - Login Success
    [Documentation]    Login Success With User "tomsmith" and Password "SuperSecretPassword!"
    [Tags]    functional

    Login    0    0
    Validate Secure Page
    Click Logout Button
    Validate Logout Message

TC002 - Login Failed - Password Incorrect
    [Documentation]    Login Failed With User "tomsmith" and Password "Password!"
    [Tags]    negative

    Login    0    1
    Validate Login Failed By    PASSWORD

TC003 - Login Failed - Username Not Found
    [Documentation]    Login Failed With User "tomholland" and Password "Password!"
    [Tags]    negative

    Login    1    1
    Validate Login Failed By    USERNAME
