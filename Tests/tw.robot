*** Settings ***
Documentation  Present some information
Library  SeleniumLibrary

*** Variables ***
${Browser}  firexox
${URL}  https://demo.stripo.email

*** Test Cases ***
Should do some drags and drops
    [Documentation]  Present some information about this test case
    [Tags]  Smoke
    open browser  ${URL}  ${Browser}

