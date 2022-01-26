*** Settings ***
Resource  ../import.robot

*** Keywords ***
navigated to highjump homepage
    open browser  ${highjump_url}  ${browser}
    maximize browser window
    wait until element is visible  ${hj_username_txb}  ${TIMEOUT_SHORT5}
    input text  ${hj_username_txb}  HJ
    press key  ${hj_username_txb}  \\13
    wait until element is visible  ${signin_label}  ${TIMEOUT_SHORT5}
    click element  ${signin_label}


click lotuss onelogin icon
    wait until element is visible  ${onelogin_btn}  ${TIMEOUT_SHORT}
    click element  ${onelogin_btn}
    wait until element is visible  ${lotuss_onelogin_icon}  ${TIMEOUT_SHORT5}


input onelogin username
    [Arguments]  ${ACCOUNT_ID}
    wait until element is visible  ${onelogin_username}  ${TIMEOUT_SHORT}
    input text  ${onelogin_username}  ${ACCOUNT_ID}


input onelogin password
    [Arguments]  ${PASSWORD}
    wait until element is visible  ${onelogin_password}  ${TIMEOUT_SHORT}
    input text  ${onelogin_password}  ${PASSWORD}


click continue button
    wait until element is visible  ${onelogin_continue_btn}  ${TIMEOUT_SHORT}
    click element  ${onelogin_continue_btn}


verify highjump homepage is visible
    wait until element is visible  ${koeber_icon_homepage}  ${TIMEOUT_MIN}


click menu korber one
    wait until element is visible  ${menu_toggle_btn}  ${TIMEOUT_SHORT}
    click element  ${menu_toggle_btn}
    wait until element is visible  ${menu_korber_one_btn}  ${TIMEOUT_SHORT}
    click element  ${menu_korber_one_btn}


select menu security
    wait until element is visible  ${menu_security}  ${TIMEOUT_SHORT}
    click element  ${menu_security}


select menu user and roles
    wait until element is visible  ${menu_user_and_roles}  ${TIMEOUT_SHORT}
    click element  ${menu_user_and_roles}


verify user and roles page is visible
    click menu korber one
    wait until element is visible  ${user_and_roles_label}  ${TIMEOUT_SHORT}


click user button
    wait until element is visible  ${user_btn}  ${TIMEOUT_SHORT}
    click element  ${user_btn}


verify user page is visible
    wait until element is visible  ${user_label}  ${TIMEOUT_SHORT}


click new user button
    wait until element is visible  ${new_user_btn}  ${TIMEOUT_SHORT}
    click element  ${new_user_btn}


verify new user page is visible
    wait until element is visible  ${user_label}  ${TIMEOUT_SHORT}


select template
    [Arguments]  ${TEMPLATE}
    wait until element is visible  ${folder_icon}  ${TIMEOUT_SHORT}
    click element  ${folder_icon}
    wait until element is visible  ${select_user_template_label}  ${TIMEOUT_SHORT}
    wait until element is visible  //tbody[@role='rowgroup']//td[text()='${TEMPLATE}'][1]  ${TIMEOUT_SHORT}
    click element  //tbody[@role='rowgroup']//td[text()='${TEMPLATE}'][1]
    click element ${select_template_btn}










