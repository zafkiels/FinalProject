*** Settings ***
Library      SeleniumLibrary
Variables    ../Resources/Demoblaze_locators_login.yaml

*** Variables ***
${DEMOBLAZE_URL}        http://automationpractice.com/index.php
${BROWSER}              gc

*** Keywords ***

Open Browser With Google Chrome
    Open Browser    url=${DEMOBLAZE_URL}     browser=${BROWSER}
    Maximize Browser Window

Wait Button SignIn Visible
    Wait Until Element Is Visible    ${TombolSignIn}

Click Button Sign In Home Page
    Click Element                    ${TombolSignIn}

Input Email
    Input Text                       ${EmailAddress}        antoniliee@gmail.com

Input Unregistered Email
    Input Text                       ${EmailAddress}        google@gmail.com

Input Wrong Email
    Input Text                       ${EmailAddress}        antonilie@gmail.com

Input Password
    Input Text                       ${Password}            Dojoboxd1

Input Unregistered Password
    Input Text                       ${Password}            Dojoboxd


Input Wrong Password
    Input Text                       ${Password}            Dojobox1

Wait logout button Visible
    Wait Until Element Is Visible    ${Logout}

klik tombol logout
    Click Element        ${Logout}

Click Button Sign In Credential
    Click Button                     ${ButtonSubmit}

