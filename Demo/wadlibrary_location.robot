*** Settings ***
Library  WADLibrary
Library  Common.py

# Starts up and teardowns the driver. Exclude these and start the driver manually if you want to log the driver output
Suite Setup  set up driver
Suite Teardown  tear down driver

# Sets up and clears the sessions inbetween tests (each attached window gets its own session)
Test Setup  set up
Test Teardown  clean up

*** Test Cases ***
Calculator
    cmd run  calc.exe
    sleep  1
    attach to window  Calculator  Calculator
    find location  One
    close window
