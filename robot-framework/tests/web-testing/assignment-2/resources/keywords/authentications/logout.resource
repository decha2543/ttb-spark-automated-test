*** Settings ***
Resource    ../../global-variable.resource
Resource    ${resources}/global-library.resource


*** Keywords ***
Click Logout Button
    Click    xpath=//a[@href="/logout"]
