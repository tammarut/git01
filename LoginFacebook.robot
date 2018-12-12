*** Settings ***
Library    Selenium2Library

*** Variable ***
${url_facebook}    https://th-th.facebook.com
${chrome}    chrome
${user_box}    xpath=//*[@id="email"]
${pass_box}    xpath=//*[@id="pass"]
${login_button}    xpath=//*[@id="loginbutton"]
${post_box}    xpath=//div[@aria-label="สร้างโพสต์"]//*[@name="xhpc_message"]

*** Keywords ***
Opem Browser
    Open Browser     ${url_facebook}    ${chrome}
    Maximize Browser Window

Login Facebook 
    Input Text    ${user_box}    
    Input Text    ${pass_box}     
    Click Element    ${login_button}
    Wait Until Page Contains    Tammarut SetoKaishou

Post Status Facebook
    Click Element     ${post_box}
	Input Text     ${post_box}     Written by Robotframework
    Wait Until Page Contains Element    xpath=//div[@class="_6c0o"]
	Click Element    xpath=//div[@class="_6c0o"]

*** Test Case ***
Post facebook
    [Tags]    Tokyo
    Opem Browser
    Login Facebook
    Post Status Facebook