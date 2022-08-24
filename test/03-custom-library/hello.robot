*** Settings ***
Library           MyLib.py

*** Variables ***
${MESSAGE}        Hello, world!

*** Test Cases ***
Variables Check
    Should Be Equal    ${MESSAGE}    Hello, world!

Say Hello World
    Print Message To Console      ${MESSAGE}