*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}  Edge
${URL}      https://autobahn.security/signup
${EMAIL}    yono3@awrgastone.com
${PASSWORD}     Cantona1010!
${INPUTEMAIL}     email
${INPUTPASSWORD}    password
${SIGNUP}   //*[@id="signup"]/div[3]/div/div[2]/div/div/div[2]/div[2]/div[3]/div/a/p
${FIRSTNAME}    first-name
${LASTNAME}     last-name
${INDUSTRY}     //*[@id="signup"]/div[3]/div/div[2]/div/div/div[2]/div[2]/div[3]/div/div[1]
${INDUSTRYDRP}  item-15
${COUNTRYCODE}      //div[@class='iti__flag-container'][1]
${COUNTRYCODEDATA}      //span[text()='Indonesia']
${PHONE}    phone-number
${STARTUSING}   (//p[contains(@class,'button-text paragraph')])[5]

*** Test Cases ***
Test001
    Open Edge
    Login

*** Keywords ***
Open Edge
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
   
Login
    Wait Until Element Is Visible    ${INPUTEMAIL}      3s
    Input Text    ${INPUTEMAIL}    ${EMAIL}
    Input Text    ${INPUTPASSWORD}    ${PASSWORD}
    Click Element    ${SIGNUP}
    Wait Until Element Is Visible    ${FIRSTNAME}   10s
    Input Text    ${FIRSTNAME}    Yono
    Input Text    ${LASTNAME}    Suyono
    Click Element    ${INDUSTRY}
    Click Element    ${INDUSTRYDRP}
    Click Element    xpath=${COUNTRYCODE}
    Click Element    ${COUNTRYCODEDATA}
    Click Element    ${PHONE}
    Input Text    ${PHONE}    857786655345
    Click Element    ${STARTUSING}
