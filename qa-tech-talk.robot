*** Settings ***
Suite Teardown    Close All Browsers
Library           Selenium2Library

*** Test Cases ***
contactus
    Open Browser
    Maximize Browser Window
    Click Element
    ### switch ke tab sebelah
    Select Window
    ### masuk form contact us
    Selenium2Library.Input Text
    Input Text
    Input Text
    Input Text
    ### scroll kebawah
    Execute Javascript
    ### click reset
    Click Element
    ### isi ulang form nya
    Input Text
    Input Text
    Input Text
    Input Text
    ### click submit
    Click Element
    ### validasiin form submit
    Page Should Contain
    Location Should Be
    Open Browser
