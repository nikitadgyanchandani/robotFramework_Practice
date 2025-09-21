*** Settings ***
Library         SeleniumLibrary


*** Keywords ***
Launching a CRM and maximising a window
    Go To                      https://automationplayground.com/crm/
    Set Selenium Timeout       3s
    Set Window Size            width=1935    height=1090

 Verifying user is on the homepage
     Wait Until Page Contains Element    xpath=//p[contains(text(),'Welcome to the customer relationship manager site!')]
     Log                     User is on the homepage 

 Signing in to CRM
     Click Link                 Sign In
    Wait Until Page Contains    Login       
    Input Text                 id=email-id       testAutomatinon@gmail.com
    Input Text                 id=password       Welcome@1234
    Click Button               id=submit-id
    Sleep                      3s
    Wait Until Element Is Visible    id=new-customer
    Log                        message= User is successfully signed in       