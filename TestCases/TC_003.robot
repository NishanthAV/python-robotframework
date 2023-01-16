*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***



*** Test Cases ***
TC_01 list test
#   @{list1}     Create List  Hello  22  23.33  World  Abcd1234
   FOR    ${i}   IN RANGE   3   15
       Log    ${i}

   END


