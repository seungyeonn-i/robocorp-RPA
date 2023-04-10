*** Settings ***
Library    SeleniumLibrary

e

*** Test Cases ***
Click Element At Coordinates Test
    Open Browser    https://www.google.com    chrome
    Mouse Down On Image    class=lnXdpd
    Mouse Out    class=lnXdpd
    Mouse Over    class=lnXdpd
    Mouse Up    class=lnXdpd

    # Wait Until Page Contains Element    //input[@name='q']
    Input Text    xpath=//input[@name='q']    robot framework
    Maximize Browser Window


    ${search_button}=    Get WebElement    xpath=//input[@name='btnK']
    Mouse Down    ${search_button}

    ${element}=    Get WebElement    //input[@name='q']
    ${location}=    Get WebElements  ${element}
    # ${x}=    Evaluate    int(${location.x} + 10)
    # ${y}=    Evaluate    int(${location.y} + 10)
    Click Element At Coordinates    ${element}    100    100
    Switch Browser    1

    Mouse Down    id=logo

    # Set Focus To Element    name=btnI

    
    # Switch Window

    # ${excludes} =    Get Window Handles    # Get list of current windows |
    # Switch Window   ${excludes}
    Close Browser
