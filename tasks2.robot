*** Settings ***
Library     SeleniumLibrary
Library    RPA.Browser.Selenium


*** Variables ***
${url}      https://www.google.com/
${search_box_locator}    css=[name=q]
${search_button_locator}    css=[name=btnK]

*** Test Cases ***
Example Test Case

    Open Available Browser    ${url}    chrome

    Is Element Enabled    ${search_box_locator} 



    Is Element Disabled    ${search_box_locator}
    Is Element Focused    ${search_box_locator}
    # Is Element Attribute Equal To    ${search_box_locator}    ${search_box_locator}    @value    ${expected_value}
    

    # is element visible
    ${search_box_visible}    Run Keyword And Return Status    Element Should Be Visible    ${search_box_locator}
    Log    Search Box is Visible: ${search_box_visible}
    
    # is element disabled
    Input Text    ${search_box_locator}    example
    ${search_button_disabled}    Run Keyword And Return Status    Element Should Be Disabled    ${search_button_locator}
    Log    Search Button is Disabled: ${search_button_disabled}
    
    # is element focused
    # Focus    ${search_box_locator}
    # ${search_box_focused}    Run Keyword And Return Status    Element Should Be Focused    ${search_box_locator}
    # Log    Search Box is Focused: ${search_box_focused}
    
    # # is element attribute equal to
    # ${search_box_value}    Get Element Attribute    ${search_box_locator}@value
    # ${expected_value}    Set Variable    example
    # ${search_box_value_equal}    Should Be Equal As Strings    ${search_box_value}    ${expected_value}
    # Log    Search Box Value is Equal to '${expected_value}': ${search_box_value_equal}
    
    Close Browser
