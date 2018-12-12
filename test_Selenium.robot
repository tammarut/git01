*** Settings ***
Library  Selenium2Library
*** Keywords ***
Looping
    Log To Console    ${\n}
    :FOR  ${mom}  IN RANGE    2     5
    \    Calculate    ${mom}
    \    Log To Console    ${\n}
Calculate
    [Arguments]    ${mom}
    :FOR  ${i}  IN RANGE  1    13
        \    ${result}    Evaluate    ${mom}*${i}
        \    Log To Console    ${mom} * ${i} = ${result}

*** Variable ***

****Test Case ***
Multiplication
    Looping


