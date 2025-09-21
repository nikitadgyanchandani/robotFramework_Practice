*** Settings ***
Documentation      This is my test suite

Resource         ../Resources/crm.robot
Resource         ../Resources/commons.robot
Suite Setup      Insert test data
Suite Teardown   Cleanup test data 
Test Setup       Begin a web test
Test Teardown    End a web test

*** Test Cases ***
Verify home page is loaded
    [Documentation]         This is my 1st TC
    [Tags]                  Smoke homePage
    Log                     Starting the test case!!
    Launch CRM and maximise window
    User is on the Homepage

Verify user is able to login with valid credentials
    [Documentation]            verifyLogin
    [Tags]                     Smoke login
    Log                        Starting the login test case
    
    Launch CRM and maximise window
    Sign in to CRM
    

Verify user is able to add new customer
    [Documentation]            verifyNewCustomerCreation
    [Tags]                     Sanity test
    Log                        message= Starting creating a new customer
   
   Launch CRM and maximise window
   Sign in to CRM
   Add a customer
   
Verify user is able to edit the existing customer
    
    [Documentation]            verifyExistingCustomerEdit
    [Tags]                     Sanity test
    Log                        message= Editing an existing customer
    Launch CRM and maximise window
    Sign in to CRM
    Edit the customer