*** Settings ***
Library   SeleniumLibrary
Suite Setup    log  Inside Test Suit Setup
Suite Teardown  log  Inside Test Suit Teardown
Test Setup  log     Inside Test Case Setup
Test Teardown   log     Inside Test Case Teardown
*** Variables ***
${google_search}  https://www.google.com/
${search_query}  flipkart
${product_search}  Iphone
${email_id}     abcd@gmail.com
*** Test Cases ***
Google Search Test
    [Documentation]  this is to open google
    [Tags]  google
    Open Browser  ${google_search}  chrome
    maximize Browser Window
    Search Data
    submit Form
    Click Element   class:LC20lb


Flipcart Search Test
    [Documentation]  open flipcart app
    [Tags]  flipcart
    sleep  5s
    Click Button  class:_2KpZ6l
    Searh Flip Data
    sleep  3s
    Click Button    class:L0Z3Pu

Purchase Item Search
    sleep  2s
    Click Element   xpath=//html/body/div[1]/div/div[3]/div[1]/div[2]/div[6]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  2s
    Click Button    class:_2KpZ6l
    sleep  2s
    Email Adress




*** Keywords ***
Search Data
    Input Text  name:q  ${search_query}

Searh Flip Data
    Input Text  name:q  ${product_search}

Email address
    Input Text  class:_17N0em   ${email_id}

