*** Settings ***

Documentation     A simple example to test a login page
Library    Selenium2Library
Resource    ./resources/resource_login.robot
Variables  ./resources/variables.py

Test Setup  Run Keywords
...         Open Browser    ${server}  ${browser}  AND
...         Maximize Browser Window

Test Teardown  Close Browser

*** Test Cases ***

TEST_01: Login to some page
Log in with correct credentials
Check user name is Joe