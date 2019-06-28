*** Settings ***
Documentation  Present some information
Library  SeleniumLibrary

*** Keywords ***


*** Variables ***


*** Test Cases ***
Should do some drags and drops
    [Documentation]  Present some information about this test case
    [Tags]  Smoke
    open browser  https://demo.stripo.email  firefox
    wait until element is visible  xpath=//div[@class="col-xs-6 col-sm-4 esdev-no-padding"][1]//div
    drag and drop by offset  xpath=//div[@class="col-xs-6 col-sm-4 esdev-no-padding"][1]//div  550  50
    sleep  5
    close browser