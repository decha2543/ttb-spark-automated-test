*** Settings ***
Resource    ../../resources/global-suite-settings.resource


*** Test Cases ***
TC001 - Get User Profile Success
    [Documentation]    Get Valid User Profile
    [Tags]    functional

    ${data}=    Load JSON From File    ${resources}/mocks-data/found-user.json
    ${response}=    Get User By ID    12
    Validate Found User
    ...    response=${response}
    ...    validate_id=${data["id"]}
    ...    validate_email=${data["email"]}
    ...    validate_first_name=${data["first_name"]}
    ...    validate_last_name=${data["last_name"]}
    ...    validate_avatar=${data["avatar"]}

TC002 - Get User Profile But User Not Found
    [Documentation]    Get Invalid User Profile
    [Tags]    negative

    ${response}=    Get User By ID    1234
    Validate Not Found User    ${response}
