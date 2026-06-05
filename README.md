# GUVI_HCL_TASK19_IntroductiontoRobotFramework_June2026
GUVI HCL TASK 19 - Introduction to Robot Framework

The current repository contains python codes to the questions mentioned in HCL GUVI Python Task 19 - https://docs.google.com/document/d/1bf-x5NBLrXNFGKDUwLwbOa6hN9doZrwE7e6n_0-6540/edit?tab=t.0

X-------------------------------------------------------------------------------------------------------------------------------------------------X

======================================================================================================================
                                    Project Structure (Page Object Model - POM)
======================================================================================================================

robotsparebin-pom/
├── requirements.txt
├── resources/
│   └── config.resource          # shared: URL, credentials, open/close browser
├── pages/
│   ├── login_page.resource      # PAGE OBJECT: login page locators + actions
│   └── sales_page.resource      # PAGE OBJECT: landing page locators + actions
└── tests/
    └── login.robot              # the test (only orchestrates page objects)
