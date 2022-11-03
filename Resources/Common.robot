*** settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  ${START_URL}  ${BROWSER}

End Web Test
    Close Browser

Insert Testing Data
    Log  Inserting Testing Data

Cleanup Testing Data
    Log  Cleaning Testing Data