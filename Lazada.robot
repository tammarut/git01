*** Settings ***
Library    Selenium2Library

*** Variable ***
${url_}    https://www.lazada.co.th
${text_path}    //*[@id="topActionDownload"]
${key_hint}    SAVE MORE ON APP

*** Keywords ***
Open Browsers
    Open Browser    ${url_}    gc

Get text from
    ${asd}    Get Text    ${text_path}
    Run Keyword If     '${asd}' == '${key_hint}'      Log To Console     Correct
    ...     ELSE    Log To Console    Nope!
    
*** Test Case ***
Action
    Open Browsers
    Get text from
    Close Browser
