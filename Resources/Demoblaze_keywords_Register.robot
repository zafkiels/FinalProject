*** Settings ***
Library      SeleniumLibrary
Variables    ../Resources/Demoblaze_locators_Register.yaml

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

Input Email For Register
    Input Text    ${RegisterEmail}    testestest123@email.com
Click Button Register Email
    Click Element    ${ButtonCreateAccount}

Wait Tittle Visible
    Wait Until Element Is Visible     ${RadioButtonMale}    timeout=10
Click Radio Button M
    Click Element  ${RadioButtonMale}
Input First Name
    Input Text    ${FirstName}    TestDojobox
Input Last Name
    Input Text    ${LastName}    Antoni
Input Email
    Input Text    ${EmailRegistered}    mail@email.com
Input Password
    Input Text    ${Password}    DojoboxFinalProject
Input Date Of Birth
    [Arguments]       ${YearOfBirthVars}=1990
    Select From List By Value    ${DayOfBirth}            1  
    Select From List By Value    ${MonthsOfBirth}         3
    #Select From List By Value    ${YearOfBirth}           1995
    Click Element    ${YearOfBirthVar.format("${YearOfBirthVars}")}

Input Address First Name
    Input Text    ${AddressFirstName}    Antoni
Input Address Last Name
    Input Text    ${AddressLastName}    Test

Input Address Company
    Input Text    ${AddressCompany}    CompanyTest
Input Address
    Input Text    ${Address}    Address1
Input Address Line 2
    Input Text    ${AddressLine2}    line2
Input Address City
    Input Text    ${AdddressCity}    City 2
Input Address state
    Select From List By value    ${AddressState}    10
Input Address Zip
    Input Text    ${AddressZip}    01254
Input Address Additional Information
    Input Text    ${AddressAdditionalInformation}    Additional Information
Input Address Home Phone
    Input Text    ${AddressHomePhone}    02584654
Input Address Mobile Phone
    Input Text    ${AddressMobilePhone}    08954654654
Input Address Alias
    Input Text    ${AddressAlias}    helloWorld
Click Register
    Click Button                     ${RegisterButton}

Error Message Should Visible
    Element Should Contain           ${ErrorElement}    There is 1 error