*** Settings ***
Library           RPA.Browser.Selenium
Library           RPA.Desktop

*** Variables ***
${BROWSER}        Chrome

*** Test Cases ***
Example Test
    Open Available Browser    https://www.google.com    ${BROWSER}
    Set Window Size    800    600
    ${location}=    Get Location
    Log    ${location}
    ${title}=    Get Title
    Log    ${title}
    Input Text    name=q    Robot Framework
    # Click Element    name=btnK
    Click Element At Coordinates    ${location}    100    100
    # Wait For Element
    # Wait Until Element Is Enabled    css=.g .rc .r a
    ${results}=    Get Text    css=.g .rc .r a
    Log Many    ${results}
    Click Element    link=Images
    Wait Until Element Is Visible    css=.rg_i
    Scroll Element Into View    css=.rg_i
    Wait Until Page Contains Element   css=.rg_i
    # @{images}=    Find Elements    css=.rg_i
    # Log    ${images}
    # ${image_count}=    Get Length    ${images}
    # Log    ${image_count}
    Close Browser
