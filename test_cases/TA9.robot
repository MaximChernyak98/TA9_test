*** Settings ***
Documentation  Page Object in Robot Framework
Library  SeleniumLibrary
Resource  ../Resources/PageObject/KeywordDefinitionFiles/GooglePage.robot
Resource  ../Resources/PageObject/KeywordDefinitionFiles/TA9MainPage.robot
Resource  ../Resources/PageObject/KeywordDefinitionFiles/Common.robot
Resource  ../Resources/PageObject/KeywordDefinitionFiles/TA9CareerPage.robot

*** Variables ***
${site_url}  https://www.google.com/
${browser}  Chrome

*** Test cases ***
Test
    [documentation]  This case checks the availability of the www.t-a9.com site and checks that the year on the career page is up to date and the up button on the career page is working.
    [tags]  Smoke
    Opening Browser  ${site_url}  ${browser}
    Enter "TA9" in the search field
    Press Enter button
    Enter the "TA9" company website from the results
    Navigate to the "Careers" page from navbar
    Scroll Element Into View Copyright Label
    Fetch the year that is noted at the bottom of the page
    Click on the "up" button
    close browser

*** Keywords ***


