*** Settings ***
Library    Selenium2Library

*** Variable ***
${google}    https://www.google.com
${search_element}    xpath=//*[@name="q"]
${button_search}    //div[@class="FPdoLc VlcLAe"]//*[@name="btnK"]
${image_tab}    //*[@id="hdtb-msb-vis"]/div[2]/a
${image_url}     xpath=//*[@id="SycMCi1pFwV8QM:"]
${title}    xpath=//*[@id="irc_cc"]/div[2]/div[3]/div[1]/div/div[1]/span/a

*** Keywords ***
Open Chrome And Search
    Open Browser    ${google}    gc
    Input Text    ${search_element}    medium   
    Click Element    ${button_search}
    
Select Picture And Go in Website
    Click Element    ${image_tab}
    Wait Until Page Contains    medium
    Click Element    ${image_url}
    Click Element    ${title}
        
*** Test Case ***
Action Medium
    Open Chrome And Search
    Select Picture And Go in Website
    Sleep    10
    Close Browser