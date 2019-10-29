*** Settings ***
Suite Teardown    Close All Browsers
Library           Selenium2Library

*** Test Cases ***
contactus
    Open Browser    http://webdriveruniversity.com/index.html    chrome
    Maximize Browser Window
    Click Element    //*[@id="contact-us"]/div/div[1]/h1
    ### switch ke tab sebelah
    Select Window    url=http://webdriveruniversity.com/Contact-Us/contactus.html
    ### masuk form contact us
    Selenium2Library.Input Text    //*[@id="contact_form"]/input[1]    luki
    Input Text    //*[@id="contact_form"]/input[2]    r
    Input Text    //*[@id="contact_form"]/input[3]    test@email.com
    Input Text    //*[@id="contact_form"]/textarea    test comment
    ### scroll kebawah
    Execute Javascript    window.scrollBy(0, -30)
    ### click reset
    Click Element    //*[@id="form_buttons"]/input[1]
    ### isi ulang form nya
    Input Text    //*[@id="contact_form"]/input[1]    luki
    Input Text    //*[@id="contact_form"]/input[2]    r
    Input Text    //*[@id="contact_form"]/input[3]    test@email.com
    Input Text    //*[@id="contact_form"]/textarea    test comment
    ### click submit
    Click Element    //*[@id="form_buttons"]/input[2]
    ### validasiin form submit
    Page Should Contain    Thank You for your Message!
    Location Should Be    http://webdriveruniversity.com/Contact-Us/contact-form-thank-you.html
    Open Browser    http://webdriveruniversity.com/index.html    chrome
