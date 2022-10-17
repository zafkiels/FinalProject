*** Settings ***
Resource    ../Resources/Demoblaze_keywords_Verify.robot
Test Setup       Open Browser With Google Chrome
#Test Teardown    Close Google Chrome Browser

*** Test Cases ***

Vereify Visible Elements
    verify Discount Banner
    Verify Button Login
    Verify Button Sign In
    verify Button Contact Us
    Verify Search Input 
    Verify Cart
    Verify Product Item
    Verify Footer