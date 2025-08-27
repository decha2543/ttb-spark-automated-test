*** Settings ***
Resource    ../../global-suite-settings.resource


*** Keywords ***
Open Browser With Test Website
    ${base_url}=    Get Data Env    BASE_URL
    New Browser
    ...    headless=True
    ...    args=['--start-maximized','--no-sandbox']
    New Context    tracing=True
    New Page    ${base_url}/login
    Set Viewport Size    1920    1080

Close Browser With Test Website
    Close Context    save_trace=True
    Close Browser
