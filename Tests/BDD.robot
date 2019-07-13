*** Settings ***
Resource  ../Resources/Resources1.robot

*** Variables ***


*** Test Cases ***
Test Case in BDD format
    Given Start Browser  safari
    When Page should contain image  Click here to shop in your local currency
    And Input in Serch field  Maisto Bburago Ferrari 458
    And Click button Search
    Then Page contains   results for "Maisto Bburago Ferrari 458"
    When Click image  Maisto R/C 1:24 Scale Ferrari 458 Italia Radio Control Vehicle (Colors May Vary)
    Then Page contains   Back to results
    When Click button Shop card
    Then Page contains   Added to Cart
    And Close browser
