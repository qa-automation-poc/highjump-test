*** Settings ***
Resource  ../import.robot

#Test Teardown  close browser

*** Test Cases ***
Create highjump user
    [Tags]  POC
    navigated to highjump homepage
    capture page screenshot  ${OUTPUTDIR}/highjump_{index}.png
    click lotuss onelogin icon
    input onelogin username  ${onelogin_id}
    click continue button
    input onelogin password  ${onelogin_pwd}
    click continue button
    verify highjump homepage is visible
    capture page screenshot  ${OUTPUTDIR}/highjump_{index}.png
    click menu korber one
    select menu security
    select menu user and roles
    verify user and roles page is visible
    capture page screenshot  ${OUTPUTDIR}/highjump_{index}.png
    click user button
    verify user page is visible
    click new user button
    verify new user page is visible
    select template  ${template_operator}

