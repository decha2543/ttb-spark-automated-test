*** Settings ***
Resource    ../../global-variable.resource
Resource    ${resources}/global-library.resource


*** Keywords ***
Open Minimal Todo Application
    ${base_url}=    Get Data Env    BASE_URL
    Open Application    ${base_url}    automationName=${automation_name}
    ...    platformName=${platform_name}    app=${app}
    Validate Home Page
    Hide Keyboard

Close Minimal Todo Application
    Hide Keyboard
    Close Application
