*** Settings ***
Documentation    Will test here all home pages from fatong sites
Library          SeleniumLibrary
# Run a script at Terminal
#  robot -d results tests/datingweb.robot
*** Variables ***


*** Test Cases ***
Home page should load
    [Documentation]                 first check sidepiece
    [Tags]                          1001    Smoke    Home
    #Initialize Selenium
    set selenium speed              5s
    set selenium timeout            20s
    # open the browser
    log                             Starting test case!
    open browser                    https://dateifyapp.com/      chrome
    # resize browser window for recording
    #set window position     x=341   y=169
    set window size                 width=1440  height=800
    page should contain             DATEIFY
    click link                      https://dateifyapp.com/privacy.php
    page should contain             Privacy Policy
    click link                      css=body > main > section > div > div > div.col-xl-7.col-lg-12.col-md-12.col-sm-12.col-12 > div > div:nth-child(42) > table > tbody > tr:nth-child(2) > td:nth-child(2) > p:nth-child(2) > a
    close browser

*** Keywords ***
