*** Settings ***
Library    Selenium2Library
*** Variable ***
${link_url}    https://pantip.com
${tag_element}    xpath=//*[@id="main-body-content"]/div[1]/div/div/div[2]/ul[1]/li[3]/a
${total_blog}    xpath=//*[@id="show_topic_lists"]

*** Keywords ***
Start Browsers
    Open Browser    ${link_url}    gc
    Click Element    ${tag_element}
    Click Element    ${smartphone_element}
    Select Window    
    ${total_blogs}    Get Matching Xpath Count    ${total_blog}
Find 1st Comment
    :FOR  ${i}  IN RANGE    ${total_blog}
  
*** Test Cases ***
On pantip
    Start Browsers
    
    #(//div[@id="sho@class="post-item-w_topic_lists"]//div[status-i"])[1]