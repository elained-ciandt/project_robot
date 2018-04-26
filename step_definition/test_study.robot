*** Settings ***
Library    AppiumLibrary
Resource  /Users/elained/Documents/AB/project_robot/features/test_study.robot

*** Variables ***
#Configuration
${serverAppim}          http://localhost:4723/wd/hub
${platformName}         android
${platformVersion}      6.0
${deviceName}           emulator-5554
${app}                  /Users/elained/analytics-lab-android/AnalyticsLab/app/build/outputs/apk/app-debug.apk
${avd}                  Nexus_5X_API_24
#Test
${login_username}       id=inputedittext_login_username
${login_password}       id=inputedittext_login_password
${user}                 elained
${password}             elained
${sign_in}              id= button_login_sign_in


*** Keywords ***

Login keyword
#	[Arguments]	${user}	${password}
Given open app
  #Open Application        ${serverAppim}  ${platformName}    ${platformVersion}   ${deviceName}   ${app}
  Open Application       http://localhost:4723/wd/hub    platformName=android  platformVersion=6.0  deviceName=emulator-5554  app=/Users/elained/analytics-lab-android/AnalyticsLab/app/build/outputs/apk/app-debug.apk
When inform user
  Input Text             ${login_username}  ${user}
And password
  Input Password         ${login_password}  ${password}
Then login successfully
  Click Element                    ${sign_in}
  Quit Application
