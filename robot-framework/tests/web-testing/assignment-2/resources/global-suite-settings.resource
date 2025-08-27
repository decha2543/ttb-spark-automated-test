*** Settings ***
Resource    ./global-variable.resource
Resource    ${resources}/global-library.resource
Resource    ${keywords}/hooks/suite-hooks.resource
Resource    ${keywords}/hooks/test-hooks.resource
Resource    ${keywords}/authentications/login.resource
Resource    ${keywords}/authentications/logout.resource
Resource    ${keywords}/validators/landing-page.resource
Resource    ${keywords}/validators/secure-page.resource
