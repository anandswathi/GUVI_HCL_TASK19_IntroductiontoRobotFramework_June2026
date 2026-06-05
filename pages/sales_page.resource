*** Settings ***
Documentation       PAGE OBJECT for the Sales System page.
...                 This page appears after a successful login.
...                 It contains all locators and actions related to the Sales page.

Library             SeleniumLibrary


*** Variables ***
# ============================================================================
# SALES PAGE LOCATORS
# Store all Sales page locators in one place.
# Update only these values if the UI changes.
# ============================================================================

${FIRSTNAME_INPUT}      id:firstname    # First Name input field on the sales form
${LOGOUT_BUTTON}        id:logout       # Logout button


*** Keywords ***
# ============================================================================
# PAGE VALIDATION
# ============================================================================

Sales Page Should Be Open
    [Documentation]    Verify that the Sales page is displayed after login.

    # Wait until the First Name field becomes visible
    Wait Until Element Is Visible    ${FIRSTNAME_INPUT}    timeout=10s

    # Confirm the element exists on the page
    Page Should Contain Element      ${FIRSTNAME_INPUT}


# ============================================================================
# USER ACTIONS
# ============================================================================

Logout
    [Documentation]    Log out from the application.

    # Click the Logout button
    Click Button    ${LOGOUT_BUTTON}