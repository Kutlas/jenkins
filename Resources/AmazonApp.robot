*** settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/SignIn.robot
Library  ../Libraries/MyCustomLibrary.py

*** Keywords ***
Login
    [Arguments]  ${Username}  ${Password}
    SignIn.Login With Valid Credentials  ${Username}  ${Password}

Login with Invalid Credentials
    SignIn.Fill "Email" Field  info@framework.com
    SignIn.Fill "Password" Field  bad
    SignIn.Click "Sign" In Button

Search for Products
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Some Custom Thing
    MyCustomLibrary.Do Something Special

