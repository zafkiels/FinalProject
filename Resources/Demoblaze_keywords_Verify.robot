*** Settings ***
Library      SeleniumLibrary
Variables    ../Resources/Demoblaze_locators_Verify.yaml

*** Variables ***
${DEMOBLAZE_URL}        http://automationpractice.com/index.php
${BROWSER}              gc
${FileUpload}           

*** Keywords ***

Open Browser With Google Chrome
    Open Browser    url=${DEMOBLAZE_URL}     browser=${BROWSER}
    Maximize Browser Window

verify Discount Banner
    Element Should Be Visible    ${BannerDiscount}

Verify Button Login
    Element Should Be Visible    ${TombolLogin}
Verify Button Sign In
    Element Should Be Visible    ${TombolSignIn}
verify Button Contact Us
    Element Should Be Visible    ${ContactUs}
Verify Search Input 
    Element Should Be Visible    ${searchInput}
Verify Cart
    Element Should Be Visible    ${cart}
Verify Product Item
    Element Should Be Visible    ${ProductItem}
Verify Footer
    Element Should Be Visible    ${Footer}