*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOMEPAGE_IMAGE} =    //*[@id="metaslider_9610"]/ul[1]/li[1]/img

*** Keywords ***
Open web page
    go to                               ${URL}

Verify page loaded
    wait until page contains element    ${HOMEPAGE_IMAGE}