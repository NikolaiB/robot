*** Settings ***
Documentation  Present some information
Library  SeleniumLibrary

*** Keywords ***


*** Variables ***


*** Test Cases ***
Guest must sign in

    [Documentation]  Present some information about this test case
    [Tags]  Smoke
    open browser  http://amazon.com  firefox
    WAIT UNTIL PAGE CONTAINS  Shop with 100% confidence on Amazon
    INPUT TEXT  id=twotabsearchtextbox  Maisto Bburago Ferrari 458
    click button  xpath=//div[@class='nav-search-submit nav-sprite']//input[@class='nav-input']
    wait until page contains  results for "Maisto Bburago Ferrari 458"
    click image  Maisto Bburago Ferrari 458 Italia Red 1:24 Diecast Model - 26003RD
    wait until page contains  Back to results
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart

    close browser
