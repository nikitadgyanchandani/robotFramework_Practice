*** Settings ***
Library         SeleniumLibrary


*** Keywords ***
Add a new customer
    Click Element              id=new-customer
    Wait Until Element Is Visible    xpath=//input[@id='EmailAddress']
    Log                        User is on the add customer page
    Input Text                 id=EmailAddress    testtestAutomatinon1@gmail.com
    Input Text                 id=FirstName       user1
    Input Text                 id=LastName        gy
    Input Text                 id=City            Pune
    Click Element              xpath=//select[@id='StateOrRegion']
    Select From List By Label  xpath=//select[@id='StateOrRegion']    Alaska
    List Selection Should Be   xpath=//select[@id='StateOrRegion']    Alaska
    Click Element            xpath=//input[@value='female']
    Click Button             xpath=//button[text()='Submit']
    Sleep                    1s


