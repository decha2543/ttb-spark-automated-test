*** Settings ***
Resource    ../../global-variable.resource
Resource    ${resources}/global-library.resource


*** Keywords ***
Suite Startup
    LOG    Prepared For Suite Startup
