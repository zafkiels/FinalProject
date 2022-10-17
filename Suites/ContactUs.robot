*** Settings ***
Resource    ../Resources/Demoblaze_keywords_ContactUs.robot
Test Setup       Open Browser With Google Chrome
#Test Teardown    Close Google Chrome Browser

*** Test Cases ***

Do Contact Us Task
    Wait Button SignIn Visible
    Click Contact Us Button
    Wait Until Contact Us Form Visible
    Select Subject Heading
    Input Email Address
    Input Order Reference
    Attach File Upload
    Input Message
    click Submit Button
    Success Alert Should visible