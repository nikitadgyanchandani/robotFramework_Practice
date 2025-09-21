*** Settings ***
Library        SeleniumLibrary


*** Keywords ***
Verify user is on customer service page
    Wait Until Element Is Visible    xpath=//h2[text()='Our Happy Customers']

Verify user able to edit the customer
    Get WebElements               xpath=//i[@class='icon-pencil']
    Click Element                 xpath=(//i[@class='icon-pencil'])[1]
    Element Should Be Visible     xpath=//a[text()='Back to Customers']
