*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
My First Test
    Log    Hello, Robot Framework!
Open Google And Check Title
    Open Browser    https://www.google.com    chrome
    Title Should Be    Google
    Close Browser

