*** Settings ***
Library           RPA.Browser.Selenium
Library    RPA.Desktop

*** Variables ***
${BROWSER}        Chrome

*** Test Cases ***
Example Test
    Open Available Browser    https://www.google.com    ${BROWSER}
    Open Available Browser    Https://www.naver.com    ${BROWSER}    alias=naver
    Set Window Size    800    600
    Switch Browser    naver
    Switch Window
    Set Window Position    100    200
    Set Selenium Timeout    2
    Set Selenium Speed    4