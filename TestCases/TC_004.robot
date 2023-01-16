*** Settings ***
Library     SeleniumLibrary
Library     Collections

*** Variables ***

*** Test Cases ***
TC_01 Test1
    ${Key_var} =    Set Variable    log to console
    Run Keyword    ${Key_var}   TestingWorldNoida@gmail.com
 # ${var}=   Set Variable    YES
 # Run Keyword If    '${var}'=='YES'    Log To Console    Value Found
 # Run Keyword If    '${var}'=='NO'     Log To Console    Value Not Found

*** Keywords ***