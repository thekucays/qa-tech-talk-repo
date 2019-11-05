*** Settings ***
Suite Teardown    Close All Browsers
Library           Selenium2Library

*** Test Cases ***
contactus
     Selenium2library.Open Browser    http://webdriveruniversity.com/    chrome
    Selenium2library.Maximize Browser Window
    Click Element    //*[@id="contact-us"]/div/div[1]/h1
    Sleep    3s
    ### switch ke tab sebelah
    Comment    Selenium2Library.Select Window    url=http://webdriveruniversity.com/Contact-Us/contactus
    Selenium2Library.Switch Window    url=http://webdriveruniversity.com/Contact-Us/contactus.html
    Comment    Selenium2Library.Page Should Contain    url=http://webdriveruniversity.com/Contact-Us/contactus \
    Selenium2Library.Location Should Be    http://webdriveruniversity.com/Contact-Us/contactus.html
    ### masuk form contact us
    Wait Until Element Is Visible    //*[@id="contact_form"]/input[1]
    Selenium2Library.Input Text    //*[@id="contact_form"]/input[1]    Agung
    Selenium2Library.Input Text    //*[@id="contact_form"]/input[2]    Setyawan
    Selenium2Library.Input Text    //*[@id="contact_form"]/input[3]    agungsetyawan@cicil.co.id
    Selenium2Library.Input Text    //*[@id="contact_form"]/textarea    Testing Automated
    ### click reset
    Comment    sleep    10s
    Click Element    //*[@id="form_buttons"]/input[1]
    sleep    5s
    ### isi ulang form nya
    Input Text    //*[@id="contact_form"]/input[1]    Agung
    Input Text    //*[@id="contact_form"]/input[2]    Setyawan
    Input Text    //*[@id="contact_form"]/input[3]    agungsetyawan@cicil.co.id
    Input Text    //*[@id="contact_form"]/textarea    Testing Automated
    ### click submit
    Click Element    //*[@id="form_buttons"]/input[2]
    ### validasiin form submit
    Page Should Contain    Thank You for your Message!
    sleep    10s
    Close Browser
