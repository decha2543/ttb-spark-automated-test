*** Settings ***
Resource    ../../global-suite-settings.resource


*** Keywords ***
Click Logout Button
    Click    xpath=//a[@href="/logout"]
