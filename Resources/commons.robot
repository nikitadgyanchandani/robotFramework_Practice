*** Settings ***

Library            SeleniumLibrary

*** Variables ***
${BROWSER} =     chrome

*** Keywords ***

Begin a web test
   Open Browser              about:blank     ${BROWSER}


 End a web test 
    Close All Browsers

Insert test data
    Log     message=Insert test data

Cleanup test data
    Log     message= Cleanup test data