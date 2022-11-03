*** Settings ***
Documentation  This is some basic info about the whole suite

Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot

Suite Setup  Insert Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleanup Testing Data

*** Variables ***
${BROWSER} =  Chrome
${START_URL} =  https://www.amazon.com/
${SEARCH_TERM} =  Lamborghini Gallardo
${LOGIN_EMAIL} =  rabetian@gmail.com
${LOGIN_PASSWORD} =  Password

*** Test Cases ***
Should be able to login
    [Tags]  login
    AmazonApp.Login  ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}

User can search for product
    [Documentation]  This is some basic info about the test
    [Tags]  current
    AmazonApp.Search for Products
    AmazonApp.Some Custom Thing

User can select a product
    [Documentation]  This is some basic info about the test
    [Tags]  smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results