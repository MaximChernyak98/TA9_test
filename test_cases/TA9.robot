*** Settings ***
Library    SeleniumLibrary
Library    String
*** Variables ***

*** Test cases ***
Test
    Create Webdriver    Chrome   executable_path="/Users/maksimcherniak/python_scripts/TA9/chromedriver_mac_arm64.zip"
    open browser    https://www.google.com/    Chrome
    input text    xpath://*[@name="q"]    TA9
    press Keys    None   \ue007
    click link    xpath://a[@href="https://www.t-a9.com/careers/"]
    Scroll Element Into View    xpath://*[@class="cp-right"]
    ${text_with_year} =    Get Text    xpath://*[@class="cp-right"]//p
    ${year} =    Fetch From Right    ${text_with_year}    All rights Reserved to TA9 LTD
    Should Be Equal As Strings    ${year.strip()}   2023
    Wait Until Element Is Enabled    xpath://*[@class="fa fa-angle-up"]
    Click Element    xpath://*[@class="fa fa-angle-up"]
    close browser

*** Keywords ***


