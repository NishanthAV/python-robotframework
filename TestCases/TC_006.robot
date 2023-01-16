*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${var1}     http://thetestingworld.com

*** Test Cases ***
TC_01
    Open Browser    ${var1}  Chrome
    Maximize Browser Window
    Execute Javascript  window.scrollTo(0,1000)
    Sleep    10s


*** Keywords ***