*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/ta9_main_page.py

*** Keywords ***
Navigate to the "Careers" page from navbar
    click link  ${MainPageCareerBTN}


