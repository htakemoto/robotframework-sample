*** Settings ***
Library         SeleniumLibrary
Library         WebdriverManager.py

*** Variables ***
${SERVER}             https://www.google.com
${BROWSER}            chrome
# ${BROWSER}            headlesschrome
${DELAY}              1
${SEARCH_INPUT}       johnson & johnson

*** Test Cases ***
Search Test
    [Tags]                smoke
    ${driver_path}=       WebdriverManager.Get Driver Path     ${BROWSER}
    Open Browser    ${SERVER}    ${BROWSER}    executable_path=${driver_path}
    Set Selenium Speed    ${DELAY}
    Input Search
    Press Enter
    Verify URL
    [Teardown]            Close All Browsers

*** Keywords ***
Input Search
    Input Text            name:q       ${SEARCH_INPUT}
    Sleep                 1s
Press Enter
    Input Text            name:q       ${SEARCH_INPUT}
Verify URL
    ${url}                Get Location
    Log To Console        ${url}
    Should Contain        ${SERVER}/search?q=    ${url}