*** Settings ***
Resource    ../Resources/Demoblaze_keywords_Login.robot
Test Setup       Open Browser With Google Chrome
#Test Teardown    Close Google Chrome Browser

*** Test Cases ***

User Login
    Wait Button SignIn Visible
    Click Button Sign In Home Page
    Input Email
    Input Password
    Click Button Sign In Credential
    Wait logout button Visible
    klik tombol logout

Login With Unregistered Email and Password
    Wait Button SignIn Visible
    Click Button Sign In Home Page
    Input Unregistered Email
    Input Unregistered Password
    Click Button Sign In Credential
    Wait logout button Visible
    klik tombol logout

Login With Wrong Email and Password
    Wait Button SignIn Visible
    Click Button Sign In Home Page
    Input Wrong Email
    Input Wrong Password
    Click Button Sign In Credential
    Wait logout button Visible
    klik tombol logout

