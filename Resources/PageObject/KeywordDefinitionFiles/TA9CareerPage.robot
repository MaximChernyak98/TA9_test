*** Settings ***
Library  SeleniumLibrary
Library  String
Variables  ../Locators/ta9_career_page.py
Variables  ../TestData/test_data.py

*** Keywords ***
Scroll Element Into View Copyright Label
    Scroll Element Into View  ${CareerPageCopyRightLabel}

Fetch the year that is noted at the bottom of the page
    ${text_with_year} =  Get Text  ${CareerPageCopyRightLabel}
    ${year} =  Fetch From Right  ${text_with_year}  All rights Reserved to TA9 LTD
    Should Be Equal As Strings    ${year.strip()}  ${CurrentYear}

Click on the "up" button
    Wait Until Element Is Enabled  ${CareerPageUpBTN}
    Click Element  ${CareerPageUpBTN}

