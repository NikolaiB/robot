*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***

Start Browser
    [Arguments]  ${Browser}
    open browser  http://amazon.com  ${Browser}
    maximize browser window

Page contains
    [Arguments]  ${Title}
    wait until page contains  ${Title}

Input in Serch field
    [Arguments]  ${Text}
    input text  id=twotabsearchtextbox  ${Text}

Click button Search
    click button  xpath=//div[@class='nav-search-submit nav-sprite']//input[@class='nav-input']

Click button Shop card
    click button  id=add-to-cart-button