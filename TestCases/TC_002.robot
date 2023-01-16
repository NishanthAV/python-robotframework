*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***



*** Test Cases ***
TC_01 Variable test
    @{list1}    Create List  Hello  22  23.33  World  Abcd1234
    ${list_length}  Get Length    ${list1}
    Log To Console    ${list_length}
    ${list_data}=    Get From List  ${list1}  3
    Log To Console    ${list_data}
    
    
*** Keywords ***