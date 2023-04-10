*** Settings ***
Library    SeleniumLibrary
Library    RPA.Browser.Selenium

*** Variables ***
${hi}        

*** Test Cases ***
Does Alert Test
    ${hi}    Does Alert Contain    hi
