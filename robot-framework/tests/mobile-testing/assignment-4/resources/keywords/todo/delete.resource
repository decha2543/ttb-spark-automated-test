*** Settings ***
Resource    ../../global-variable.resource
Resource    ${resources}/global-library.resource


*** Keywords ***
Remove Todo Item
    Swipe    start_x=1100    start_y=400    end_x=500    end_y=400    duration=200ms
