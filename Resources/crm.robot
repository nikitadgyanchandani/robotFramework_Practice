*** Settings ***

Library            SeleniumLibrary
Resource           ../Resources/PageObject/customerServicePage.robot
Resource           ../Resources/PageObject/addNewCustomer.robot
Resource           ../Resources/PageObject/login.robot


*** Keywords ***
Launch CRM and maximise window 
   login.Launching a CRM and maximising a window

User is on the Homepage
    login. Verifying user is on the homepage

Sign in to CRM
    login. Signing in to CRM
   
Add a customer   
    addNewCustomer.Add a new customer

Edit the customer
    customerServicePage.Verify user is on customer service page
    customerServicePage.Verify user able to edit the customer
    