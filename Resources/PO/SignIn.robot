*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Email_Field} =  id=ap_email
${Password_Field} =  id=ap_password
${Continue_Button} =  id=continue
${SignIn_Button} =  id=signInSubmit

*** Keywords ***
Login With Valid Credentials
    [Arguments]  ${Username}  ${Password}
    Fill "Email" Field  ${Username}
    Fill "Password" Field  ${Password}
#    Click "Sign In" Button

Fill "Email" Field
    [Arguments]  ${Username}
#    Log  Filling Email field with "${Username}"
    Input Text  ${Email_Field}  ${Username}
    Click Button  ${Continue_Button}
    Wait Until Page Contains  Password

Fill "Password" Field
    [Arguments]  ${Password}
#    Log  Filling Password field with ${Password}
    Input Text  ${Password_Field}  ${Password}
    Click Button  ${SignIn_Button}
    Wait Until Page Contains  problem

Click "Sign In" Button
    Log  Clicking submit button
