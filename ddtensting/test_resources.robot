*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://opensource-demo.orangehrmlive.com/
${name}           Admin
${password}       Admin
@{ CREDENTIALS}    Admin    Admin
&{LOGIN}          username=Admin    password=Admin

*** Test Cases ***
Test1
    Open Browser    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F    chrome
    Maximize Browser Window
    Close All Browsers

Test2
    Open Browser    ${url}    chrome
    Input Text    id=txtUsername    @{CREDENTIALS}[0]
    InLput Password    id=txtPassword    &{Login}[password]
    Click Button    id=btnLogin
    Close Browser

Test3
    [Tags]    Test3
    Open Browser    ${url}    chrome
    Login1
    Close All Browsers

*** Keywords ***
Login1
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    Admin
    Click Button    id=btnLogin
