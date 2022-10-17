*** Settings ***
Library      SeleniumLibrary
Variables    ../Resources/Demoblaze_locators_ContactUs.yaml

*** Variables ***
${DEMOBLAZE_URL}        http://automationpractice.com/index.php
${BROWSER}              gc      

*** Keywords ***

Open Browser With Google Chrome
    Open Browser    url=${DEMOBLAZE_URL}     browser=${BROWSER}
    Maximize Browser Window

Wait Button SignIn Visible
    Wait Until Element Is Visible    ${ContactUs}    6

Click Contact Us Button
    Click Element    ${ContactUs}

Wait Until Contact Us Form Visible
    Wait Until Element Is Visible       ${ContactUsForm}    6
Select Subject Heading
    Select From List By Value    ${SubjectHeading}    1
Input Email Address
    Input Text    ${EmailAddress}    Abcde@email.com
Input Order Reference
    Input Text    ${OrderReference}    Hello!
Attach File Upload
    Choose File    ${AttachFile}        ${CURDIR}/UploadDir/UploadDojo.png    

Input Message
    Input Text    ${Message}    Hello! ini Message

click Submit Button
    Click Element    ${SendButton}

Success Alert Should visible
    Element Should Contain    ${AlertSucces}    Your message has been successfully sent to our team.
