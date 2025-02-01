*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BUY_MENU} =    //*[@id="menu-item-113"]/a
${OTTAWA_LISTING_SUBMENU} =    https://grapevine.ca/ottawa-listings/
${OTTAWA_LISTING_HEADER} =    Ottawa Listings

*** Keywords ***
Go to Ottawa listing page
    Click BUY link
    Click Ottawa Listing link
    Verify page loaded

Click BUY link
    click link                          ${BUY_MENU}

Click Ottawa Listing link
    click link                          ${OTTAWA_LISTING_SUBMENU}

Verify page loaded
    wait until page contains            ${OTTAWA_LISTING_HEADER}
    sleep                               10s