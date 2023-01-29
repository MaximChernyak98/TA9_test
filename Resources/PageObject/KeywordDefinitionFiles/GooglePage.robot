*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/google_page.py
Variables  ../TestData/test_data.py

*** Keywords ***
Enter "TA9" in the search field
    Input Text  ${SearchField}  ${TA9SearchText}

Enter the "TA9" company website from the results
    click link  ${TA9SearchResultLink}

