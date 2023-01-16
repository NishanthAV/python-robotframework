*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${var1}     http://thetestingworld.com

*** Test Cases ***
TC_01
    Open Browser    ${var1}     Chrome
    Go To    https://www.google.com
    ${URL1}=    Get Location
    Log To Console    ${url1}
    Go Back
    ${URL1}=    Get Location
    Log To Console    ${url1}
