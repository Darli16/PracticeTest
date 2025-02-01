*** Settings ***
Documentation       This is practice test
Resource            ../Resources/Common.robot
Resource            ../Resources/GrapevineApp.robot
Test Setup          Common.Begin web test
Test Teardown       Common.End web test

#robot -d result test/grapevine.robot
*** Variables ***
${BROWSER} =    safari
${URL} =    https://grapevine.ca/

*** Test Cases ***
User should be able to search Ottawa
    Search for office in Ottawa



