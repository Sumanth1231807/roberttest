*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${web_url}  https://www.google.com/
${search_p}  Amazon.in

*** Test Cases ***

Login Screen Test
  [Documentation]  This is login screen for user
  [Tags]   users
  log  Hello

Registration Screen Test
  [Documentation]  This is Registration Screen for user
  [Tags]   users
  log  Success

Admin Login Test
  [Documentation]  This page is for admin
  [Tags]  admin
  log  Admin

Google Test
  [Documentation]  google search test
  [Tags]  Internet
  Open Browser  ${web_url}     chrome
  Maximize Browser Window
  Enter Search Data
  Submit Form
  sleep  5s
  Close Browser



*** Keywords ***
Enter Search Data
    Input Text  name:q  ${search_p}
