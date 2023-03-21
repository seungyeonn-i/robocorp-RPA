*** Settings ***
Library           RPA.Browser.Selenium
Library           RPA.Desktop

*** Variables ***
${BROWSER}        Chrome
${location}

*** Test Cases ***
Example Test
    Open Available Browser    https://www.google.com    ${BROWSER}
    # Open Available Browser    Https://www.naver.com    ${BROWSER}    alias=naver
    Set Window Size    800    600
    # Switch Browser    naver
    # Switch Window
    Set Window Position    100    200
    Set Selenium Timeout    2
    Set Selenium Speed    4
    Set Selenium Implicit Wait    7
    Set Screenshot Directory    ${OUTPUT_DIR}
    Set Focus To Element    css=.rg_i
    Click Element At Coordinates    ${location}    100    100


