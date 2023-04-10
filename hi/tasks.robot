*** Settings ***
Library    RPA.Windows

*** Tasks ***
Do some calculations
    [Setup]  Windows Run   calc.exe
    # Control Window    name:Calculator
    Click    id:clearButton
    Send Keys   keys=96+4=
    ${result}=    Get Attribute    id:equalButton    Name
    Log To Console    ${result}
    ${buttons}=  Get Text  id:CalculatorResults    
    # FOR  ${button}  IN  @{buttons}
        Log To Console   ${buttons}
    # END
    [Teardown]   Close Current Window