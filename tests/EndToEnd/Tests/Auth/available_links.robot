*** Settings ***
Documentation     A test suite to check available links on the login page.
Suite Setup       Suite Setup
Suite Teardown    Close Browser
Resource          ../../Pages/login_page.robot

*** Test Cases ***
Reset Link Is Visible
    Element Should Be Visible    ${RESET PASSWORD LINK}

Webauthn login Link Is Visible
    Element Should Be Visible    ${SIGN IN WITH WEBAUTHN LINK}

Legacy login Link Is Visible
    Show Webauthn Form
    Element Should Be Visible    ${SIGN IN WITH LOGIN PASSWORD LINK}

Recover Account Link Is Visible
    Show Webauthn Form
    Element Should Be Visible    ${RECOVER YOUR ACCOUNT LINK}

*** Keywords ***
Suite Setup
    Open Blank Browser
    Go To Legacy Login Page