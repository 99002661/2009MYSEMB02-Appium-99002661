*** Settings ***
Library    AppiumLibrary    
*** Keywords ***
I have my app open
    Open Application    remote_url=http://localhost:4723/wd/hub  
    ...    platformName=android    deviceName=sc    app=${EXECDIR}${/}app${/}aartest.apk    noReset=true
    Set Appium Timeout    10s
I click e-Pass
    Wait Until Page Contains Element    xpath=//*[@text='e-Pass']   
    Click Element    xpath=//*[@text='e-Pass'] 
I clicked in my e-pass number    
    Wait Until Element Is Visible    xpath=//*[@text='What is my e-pass number?']    
    Click Element    xpath=//*[@text='What is my e-pass number?']
I validate the e-pass number
    Page Should Contain Text    The 6 digit unique alphanumeric ID mentioned on the e-pass is the e-pass number.
*** Test Cases ***
TestCase
    Given I have my app open
    When I click e-Pass
    And I clicked in my e-pass number
    Then I validate the e-pass number