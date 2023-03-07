*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://www.aviemuah.com/member/login.html?noMemberOrder&returnUrl=%2Fmyshop%2Forder%2Flist.html
${BROWSER}        Chrome

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    jeongsy8928
    Input Password    robocorp!!
    Submit Credentials
    Welcome Page Should Be Open
    # [Teardown]    Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    # Title Should Be    숭실대학교 통합로그인

Input Username
    [Arguments]    ${username}
    Input Text    member_id    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    member_passwd    ${password}

Submit Credentials
    Click Link    \#none

Welcome Page Should Be Open
    Title Should Be    Àvie muah