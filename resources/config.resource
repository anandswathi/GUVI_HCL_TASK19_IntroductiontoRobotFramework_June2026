*** Settings ***
Documentation       Shared configuration used by all test cases.
...                 Contains application URL, browser name, credentials,
...                 and reusable browser setup/teardown keywords.

Library             SeleniumLibrary    # Import Selenium keywords


*** Variables ***
${URL}          https://robotsparebinindustries.com/    # Application URL
${BROWSER}      Chrome                                  # Browser to launch
${USERNAME}     maria                                   # Valid username
${PASSWORD}     thoushallnotpass                        # Valid password


*** Keywords ***
Open Application
    [Documentation]    Opens the application in a browser.
    Open Browser    ${URL}    ${BROWSER}    # Launch browser and open URL
    Maximize Browser Window                 # Maximize browser window

Close Application
    [Documentation]    Closes the browser after test execution.
    Close Browser                          # Close the currently opened browser