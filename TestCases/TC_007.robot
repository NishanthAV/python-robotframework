*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${var1}     http://thetestingworld.com

*** Test Cases ***
TC_01
    Open Browser    ${var1}  Chrome
    Maximize Browser Window
    Open Context Menu       xpath://span[@class='menu-title']
    Double Click Element    xpath://a[text()='Login']
    Mouse Down    xpath://a[text()='Login']
    Mouse Up    xpath://a[text()='Login']
    Sleep    10s


*** Keywords ***