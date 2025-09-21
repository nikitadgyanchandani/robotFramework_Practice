*** Settings ***
Library         SeleniumLibrary


*** Keywords ***
Open Heroku app
    Go To    https://the-internet.herokuapp.com/   
    Set Selenium Timeout    3s
    Set Window Size    width=1935    height=1090

Verify home page title
    Wait Until Page Contains    Welcome to the-internet  

Verify checkbox is responsive
    Click Link    Checkboxes
    Wait Until Element Is Visible    xpath=//h3[text()='Checkboxes']
    Click Element     xpath=//form[@id='checkboxes']//input[2]   

User is navigated back to home page
    Go Back
    Wait Until Page Contains    Welcome to the-internet

Verify user able to click drag and drop button
    Click Element    xpath=//a[text()='Drag and Drop']

Verify drag and drop is working
    Drag And Drop    xpath=//div[@id='column-a']    xpath=//div[@id='column-b'] 
    ${attribute_value}=    Get Element Attribute     xpath=//div[@id='column-a']//header    valAfterDD
    IF    '${attribute_value}' == 'B'   
        Log To Console    message=Element is successively drag and dropped
    ELSE
        Log To Console    message=Drag and drop failed
    END
     
    
