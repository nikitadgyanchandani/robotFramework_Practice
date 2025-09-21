*** Settings ***

Library            SeleniumLibrary


*** Test Cases ***

User can search for products
    Begin a Web Test        https://google.com        firefox


*** Keywords ***
Begin a Web Test
    [Arguments]        ${url}        ${browser}
    Open Browser       ${url}        ${browser}
    Close Browser
