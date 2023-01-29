*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Opening Browser
    [Arguments]  ${site_url}  ${browser}
    Open Browser  ${site_url}  ${browser}

Press Enter button
    press Keys    None   \ue007
