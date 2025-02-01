*** Settings ***
Resource    ../Resources/PO/Homepage.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/OttawaListingPage.robot

*** Variables ***


*** Keywords ***
Search for office in Ottawa
    Homepage.Open web page
    Homepage.Verify page loaded
    TopNav.Go to Ottawa listing page
    OttawaListingPage.Search and filter for Ottawa
