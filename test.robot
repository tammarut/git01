*** Settings ***
Library    AppiumLibrary

*** Variable ***
${btnFacebook}    xpath=//android.widget.TextView[@text='Krungthai']

*** Test Case ***
Test
    [Documentation]    รักประเทศไทย
    [Tags]    ไทยแลน
    Set Library Search Order    AppiumLibrary
    Open Application   http://127.0.0.1:4723/wd/hub
    ...    platformName=Android    platformVersion=8.1.0
    ...    deviceName=8288663d0305   appPackage=com.google.android.apps.messaging
    ...    appActivity=com.google.android.apps.messaging.ui.ConversationListActivity
    Wait Until Page Contains Element    ${btnFacebook}
    Click Element    ${btnFacebook}
    #${text}=    Get Text
    ${text}=            
    Log To Console    ${text}