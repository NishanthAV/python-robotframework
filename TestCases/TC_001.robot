*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}      Edge
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_1 Browser start and close
    Open Browser    ${URL}  ${Browser}
    Maximize Browser Window
TC_02 Enter Initial Credentials
    Enter Username Email Password Confirmpassword
TC_03 Enter Secondary Credentials
    Enter dob phone address
TC_04 Home mark
    Enter home mark
TC_05 Dropdown list
    Enter gender country state city
TC_06 code
    Enter Zipcode
TC_07 submit
    Enter Signup
TC_08 Close
    Close All Browsers
           
#    Click Element    xpath://select[@name='country']
#    Sleep    4s
#    Click Button     India
#    Sleep    4s
#    Click Element    xpath://select[@name='state']
#    Sleep    2s
#    Click Button     Karnataka
#    Sleep    4s
#    Click Element    xpath://select[@name='city']
#    Sleep    2s
#    Click Button     bangalore
#    Sleep    4s
#    Input Text    xpath://input[@placeholder='Zip code']    560110
#    Sleep   4s
#    Click Element    xpath://input[@name='terms']
#    Sleep    4s
#    Click Button    xpath://input[@value='Sign up']
#    Sleep   4s
    Close Browser

*** Keywords ***
Enter Username Email Password Confirmpassword
    Input Text    xpath://input[@placeholder='myusername']    Nick
    Sleep    2s
    Input Text    xpath://input[@name='fld_email']   nishanthdaredevil1@gmail.com
    Sleep   2 sec
    Input Text    xpath://input[@placeholder='Password']    abcd123
    Sleep    2s
    Input Text    xpath://input[@placeholder='Confirm password']    abcd123
    Sleep    2s

Enter dob phone address
    Input Text    xpath://input[@name='dob']    09/09/1997
    Sleep   4s
    Input Text    my-input-field    Enter
#    Press Key    my-input-field    \ue007
    Sleep   2s
    Input Text    xpath://input[@name='phone']   8310711509
    Sleep    2s
    Input Text    xpath://input[@name='address']    Ullal
    Sleep    2s
Enter home mark
    Double Click Element    xpath://input[@value='home']
    Sleep    2s

Enter gender country state city
    Select From List By Index    name:sex    2
    Sleep    5s
    Select From List By Label    name:country   India
    Sleep    5s
    Select From List By Index    class:states     17
    Sleep    5s
    Select From List By Label    name:city      Bengaluru
    Sleep    5s

Enter Zipcode
    Input Text    xpath://input[@placeholder='Zip code']    560110
    Sleep    4s

Enter signup
     click button   xpath://input[@value='Sign up']
     Sleep   3s
     Capture Page Screenshot    C:/Users/Admin/PycharmProjects/shimadzu/Screenshots/capture1.png