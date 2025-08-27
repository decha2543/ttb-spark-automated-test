*** Settings ***
Resource    ./global-variable.resource
Resource    ${resources}/global-library.resource
Resource    ${keywords}/hooks/suite-hooks.resource
Resource    ${keywords}/hooks/test-hooks.resource
Resource	${keywords}/todo/add.resource
Resource	${keywords}/todo/delete.resource
Resource	${keywords}/todo/get.resource
Resource	${keywords}/validators/home-page.resource
Resource	${keywords}/validators/add-todo-page.resource
