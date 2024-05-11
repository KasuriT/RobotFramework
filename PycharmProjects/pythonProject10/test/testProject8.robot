*** Settings ***
Documentation        To validate the login form
Library        SeleniumLibrary
Library        Collections
Library        ../customLibraries/Shop.py
Test Setup        Open the browser with the Mortgage payment URL  
Resource        resource.robot


*** Variables ***
${Error_Message_Login}        css:.alert-danger
${Shop_Page_Load}        css:.nav-link
${ListofProducts}        Blackberry        Nokia Edge

*** Test Cases ***
Validate the Login form
    
    Fill the Login form        ${user_name}        ${invalid_password}
    Wait Until Element Is locate in the page        ${Error_Message_Login}
    verify error message is correct

Validate cards display in the Shopping Page
    Fill The Login Form        ${user_name}        ${valid_password}
    Wait Until Element Is Locate In The Page        ${Shop_Page_Load}
    Verify card title in the shop page
    Hello World
    Add Items To Cart And Checkout        ${ListofProducts}
    #Select the Card        Blackberry



*** Keywords ***


Fill the Login form
    [Arguments]        ${username}        ${password}
    Input Text        id:username        ${username}
    Input Password        id:password        ${password}
    Click Button        id:signInBtn


Wait Until Element Is locate in the page
    [Arguments]        ${element}
    Wait Until Element Is Visible        ${element}

verify error message is correct
    ${result}=        Get Text        ${Error_Message_Login}
    Should Be Equal As Strings        ${result}        Incorrect username/password.
    Element Text Should Be        ${Error_Message_Login}        Incorrect username/password.

Verify card title in the shop page
    @{expectedList}=        Create List    iphone X        Samsung Note 8        Nokia Edge        Blackberry
    ${elements}=        Get Webelements        css:.card-title
    ${actualList}=        Create List
    FOR        ${element}        IN        ${elements}
        Log        ${element.text}
        Append To List        ${actualList}          ${element.text}
    END
    Lists Should Be Equal        ${expectedList}        ${actualList}
    
Select the Card
    [Arguments]        ${cardName}
    ${elements}=        Get Webelements        css:.card-title
    ${index}        Set Variable    
    FOR        ${element}        IN        ${elements}
        Exit For Loop If    '${cardName}'        ==        '${element.text}'
        ${index}=        Evaluate        ${index}+1
        
    END
    Click Button        xpath:(//*[@class='card-footer'])[${index}]/button