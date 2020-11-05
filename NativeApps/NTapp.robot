*** Settings ***
Library    AppiumLibrary
Library    Process
*** Keywords ***


 

*** Test Cases ***
Test1
  Open Application    remote_url=http://localhost:4723/wd/hub  
    ...    platformName=android    deviceName=sc    app=${EXECDIR}${/}app${/}aartest.apk    noReset=true
    Set Appium Timeout    10s
    Wait Until Page Contains Element    xpath=//*[@text='e-Pass']   
    Click Element    xpath=//*[@text='e-Pass']
    Wait Until Element Is Visible    xpath=//*[@text='What is my e-pass number?']    
    Click Element    xpath=//*[@text='What is my e-pass number?']
    Page Should Contain Text    The 6 digit unique alphanumeric ID mentioned on the e-pass is the e-pass number.
    
   
  
Test2
    Open Application    remote_url=http://localhost:4723/wd/hub  
    ...    platformName=android    deviceName=sc    app=${EXECDIR}${/}app${/}aartest.apk    noReset=true
    Set Appium Timeout    10s
    
    Wait Until Page Contains Element    xpath=//*[@text='Assess Again']   
    Click Element    xpath=//*[@text='Assess Again']
    Wait Until Page Contains Element    xpath=//*[@text='Ok, Got it']   
    Click Element    xpath=//*[@text='Ok, Got it']
    Wait Until Page Contains Element    xpath=//*[contains(@text,'None')]   
    Click Element    xpath=//*[contains(@text,'None')]
    sleep     2
    Wait Until Page Contains Element    xpath=(//*[contains(@text,'None')])[2]   
    Click Element    xpath=(//*[contains(@text,'None')])[2]
    Wait Until Page Contains Element    xpath=//*[@text='No']
    Click Element    xpath=//*[@text='No']
    Swipe By Percent    50    75    50    25    2000
    Wait Until Page Contains Element    xpath=(//*[contains(@text,'None')])[3]   
    Click Element    xpath=(//*[contains(@text,'None')])[3]
    Swipe By Percent    50    75    50    25    2000
    Wait Until Page Contains Element    xpath=//*[@text='Ok']
    Click Element    xpath=//*[@text='Ok']
    Swipe By Percent    50    25    50    75    2000
    sleep     2
    Page Should Contain Text    You are Safe