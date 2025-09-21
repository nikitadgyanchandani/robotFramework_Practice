*** Settings ***
Library    SeleniumLibrary

Documentation      This is my test suite

Resource         ../Resources/heroku.robot
Resource         ../Resources/commons.robot
Suite Setup      Insert test data
Suite Teardown   Cleanup test data 
Test Setup       Begin a web test
Test Teardown    End a web test

# *** Variables ***
# ${BROWSER} =     chrome

*** Test Cases ***
Verify The Internet Home Page Title 
    [Documentation]         This is my 1st TC
    [Tags]                  SmokeTest
    Log                     Starting the test case!!
    User launches heroku app and maximises window
    user is on the home page

Verify user able to uncheck the checkbox
    Given User launches heroku app and maximises window
    When User is on the home page
    Then Verify user able to uncheck the checkbox
    And User goes back to home page
    When User clicks on the Drag and Drop
    Then User should be able to drag and drop the element
    
    


