*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SEARCH_FILTER_BUTTON} =    //*[@id="post-114"]/div/div/div/div/div/div[1]/header/div[1]/div[2]/div/div[1]/a
${CITY_TEXT_BOX} =    //*[@id="input_city"]
${CITY_NAME} =    Ottawa
${PROPERTY_TYPE_DROPDOWN} =    input_property_type
${PROPERTY_TYPE_NAME} =    Office
${PROVINCE_DROPDOWN} =    input_province
${PROVINCE_NAME} =    Ontario
${SEARCH_BUTTON} =    Search
${SEARCH_RESULT_LABEL} =    //*[@id="post-114"]/div/div/div/div/div/div[1]/div/header/div[2]/div[1]/strong

*** Keywords ***
Search and filter for Ottawa
    click link                          ${SEARCH_FILTER_BUTTON}
    input text                          ${CITY_TEXT_BOX}   ${CITY_NAME}
    select from list by value           ${PROPERTY_TYPE_DROPDOWN}     ${PROPERTY_TYPE_NAME}
    select from list by value           ${PROVINCE_DROPDOWN}     ${PROVINCE_NAME}
    click button                        ${SEARCH_BUTTON}
    sleep                               10s


