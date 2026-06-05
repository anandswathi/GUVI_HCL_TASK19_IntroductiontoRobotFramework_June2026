*** Settings ***
Documentation       PAGE OBJECT for the Login page.
...                 Contains all login page locators and reusable keywords.
...                 Tests should call these keywords instead of using locators directly.

Library             SeleniumLibrary

# Import configuration variables such as ${USERNAME} and ${PASSWORD}
Resource            ../resources/config.resource


*** Variables ***
# ============================================================================
# LOGIN PAGE LOCATORS
# Store all page locators in one place.
# If the application UI changes, update only these values.
# ============================================================================

${USERNAME_INPUT}       id:username         # Username text box
${PASSWORD_INPUT}       name:password       # Password text box
${SUBMIT_BUTTON}        css:form > button   # Login button


*** Keywords ***
# ============================================================================
# PAGE VALIDATION
# ============================================================================

Login Page Should Be Open
    [Documentation]    Verify that the login page is displayed.

    # Wait until the username field becomes visible
    Wait Until Element Is Visible    ${USERNAME_INPUT}    timeout=10s


# ============================================================================
# USER ACTIONS
# ============================================================================

Enter Username
    [Documentation]    Enter the username into the username field.
    [Arguments]    ${username}

    # Type the username value
    Input Text    ${USERNAME_INPUT}    ${username}


Enter Password
    [Documentation]    Enter the password into the password field.
    [Arguments]    ${password}

    # Type the password value (hidden in logs)
    Input Password    ${PASSWORD_INPUT}    ${password}


Submit Login Form
    [Documentation]    Click the Login button.

    # Submit the login form
    Click Button    ${SUBMIT_BUTTON}


# ============================================================================
# BUSINESS KEYWORDS
# ============================================================================

Login With Valid Credentials
    [Documentation]    Log in using valid credentials from config.resource.

    # Enter valid username
    Enter Username    ${USERNAME}

    # Enter valid password
    Enter Password    ${PASSWORD}

    # Click the Login button
    Submit Login Form