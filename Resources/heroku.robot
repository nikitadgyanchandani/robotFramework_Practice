*** Settings ***

Library            SeleniumLibrary
Resource           ../Resources/PageObject/homePage_heroku.robot


*** Keywords ***
User launches heroku app and maximises window
    homePage_heroku.Open Heroku app
    

User is on the home page
    homePage_heroku.Verify home page title

Verify user able to uncheck the checkbox
    homePage_heroku.Verify checkbox is responsive   

User goes back to home page
    homePage_heroku.User is navigated back to home page

User clicks on the Drag and Drop
    homePage_heroku.Verify user able to click drag and drop button      

User should be able to drag and drop the element
    homePage_heroku.Verify drag and drop is working      