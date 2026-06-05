*** Settings ***
Documentation       Login test implemented using the Page Object Model (POM).
...                 This test file contains only business actions and no locators.


# Import shared configuration settings
Resource            ../resources/config.resource

# Import Login Page Object
Resource            ../pages/login_page.resource

# Import Sales Page Object
Resource            ../pages/sales_page.resource

# Runs before every test case
Test Setup          Open Application

# Runs after every test case (Pass or Fail)
Test Teardown       Close Application


*** Test Cases ***
Valid Login Logs The User In Successfully
    [Documentation]    Verify that a user can successfully log in and log out.

    Login Page Should Be Open           # Verify login page is displayed

    Login With Valid Credentials        # Enter valid username & password and click Login

    Sales Page Should Be Open           # Verify successful login by checking Sales page

    Logout                             # Log out from the application