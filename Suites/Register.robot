*** Settings ***
Resource    ../Resources/Demoblaze_keywords_Register.robot
Test Setup       Open Browser With Google Chrome
#Test Teardown    Close Google Chrome Browser

*** Test Cases ***

User Register
    Wait Button SignIn Visible
    Click Button Sign In Home Page
    Input Email For Register
    Click Button Register Email
    Wait Tittle Visible
    Click Radio Button M
    Input First Name
    Input Last Name
    Input Email
    Input Password
    Input Date Of Birth
    Input Address First Name
    Input Address Last Name
    Input Address Company
    Input Address
    Input Address City
    Input Address state
    Input Address Zip
    Input Address Additional Information
    Input Address Home Phone
    Input Address Mobile Phone
    Input Address Alias
    #Click Register

User Register with no completed field
    Wait Button SignIn Visible
    Click Button Sign In Home Page
    Input Email For Register
    Click Button Register Email
    Wait Tittle Visible
    Click Radio Button M
    Input Last Name
    Input Password
    Input Date Of Birth
    Input Address First Name
    Input Address Company
    Input Address
    Input Address City
    Input Address state
    Input Address Zip
    Input Address Additional Information
    Input Address Home Phone
    Input Address Mobile Phone
    Input Address Alias
    Click Register
    Error Message Should Visible