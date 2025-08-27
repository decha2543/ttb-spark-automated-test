*** Settings ***
Resource            ../resources/global-suite-settings.resource

Test Setup          Open Minimal Todo Application
Test Teardown       Close Minimal Todo Application


*** Test Cases ***
TC001 - Add And Delete Todo List
    [Documentation]    Verify User Add A New Todo List And Delete
    [Tags]    functional

    ${text}=    Set Variable    test
    Click Add Todo Button
    Input Todo Name    ${text}
    Submit Add Todo Item
    Validate Todo Item    ${text}
    Remove Todo Item
    Validate Todo Item Empty

TC002 - Add And Delete Multiple Todo List
    [Documentation]    Verify User Add Todo List And Delete In Multiple Times
    [Tags]    functional

    FOR    ${index}    IN RANGE    1    6
        ${text}=    Set Variable    test${index}
        Click Add Todo Button
        Input Todo Name    ${text}
        Submit Add Todo Item
        Validate Todo Item    ${text}
        Remove Todo Item
    END
    Validate Todo Item Empty

TC003 - Add Multiple Todo List Then Delete
    [Documentation]    Verify User Add Multiple Todo List With Valid Name Then Delete After Add Multiple Todo List Success
    [Tags]    functional

    FOR    ${index}    IN RANGE    1    6
        ${text}=    Set Variable    test${index}
        Click Add Todo Button
        Input Todo Name    ${text}
        Submit Add Todo Item
        Validate Todo Item    ${text}
    END
    FOR    ${index}    IN RANGE    1    6
        Remove Todo Item
    END
    Validate Todo Item Empty

TC004 - Rename Todo List
    [Documentation]    Verify User Rename A Todo List
    [Tags]    functional

    ${text}=    Set Variable    test
    ${text_edit}=    Set Variable    test_edit
    Click Add Todo Button
    Input Todo Name    ${text}
    Submit Add Todo Item
    Validate Todo Item    ${text}
    Click To Do Item    ${text}
    Input Todo Name    ${text_edit}
    Submit Add Todo Item
    Validate Todo Item    ${text_edit}
    Remove Todo Item
    Validate Todo Item Empty

TC005 - Add Todo List With Special Character
    [Documentation]    Verify User Add A New Todo List With Special Character
    [Tags]    functional

    ${text}=    Set Variable    test!$%&*+,-./:;<=>?@^_`~
    Click Add Todo Button
    Input Todo Name    ${text}
    Submit Add Todo Item
    Validate Todo Item    ${text}
    Remove Todo Item
    Validate Todo Item Empty

TC006 - Add Todo List With White Space
    [Documentation]    Verify User Add A New Todo List With White Space
    [Tags]    functional

    ${text}=    Set Variable    test${SPACE}test${SPACE}test${SPACE}test${SPACE}test
    Click Add Todo Button
    Input Todo Name    ${text}
    Submit Add Todo Item
    Validate Todo Item    ${text}
    Remove Todo Item
    Validate Todo Item Empty

TC007 - Add Todo List With Duplicate Name
    [Documentation]    Verify User Add A New Todo List With Duplicate Name
    [Tags]    functional

    ${text}=    Set Variable    test
    FOR    ${index}    IN RANGE    1    6
        Click Add Todo Button
        Input Todo Name    ${text}
        Submit Add Todo Item
        Validate Todo Item    ${text}
    END
    FOR    ${index}    IN RANGE    1    6
        Remove Todo Item
    END
    Validate Todo Item Empty

TC008 - Add Todo List With Empty Name
    [Documentation]    Verify User Add A New Todo List With Empty Name
    [Tags]    negative

    Click Add Todo Button
    Input Todo Name    ${EMPTY}
    Submit Add Todo Item
    Validate Todo Item Empty

TC009 - Add Todo List With Reminder
    [Documentation]    Verify User Add A New Todo List With Reminder
    [Tags]    functional

    ${text}=    Set Variable    test
    Click Add Todo Button
    Input Todo Name    ${text}
    Toggle Remind Me Switch
    ${date}    ${time}=    Get Date Field
    Validate Remind Me Message    ${date}    ${time}
    Submit Add Todo Item
    Validate Todo Item    ${text}
    Validate Todo Item With Reminder    ${date}    ${time}
    Remove Todo Item
    Validate Todo Item Empty
