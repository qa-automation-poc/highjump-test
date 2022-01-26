*** Settings ***
Resource  ../import.robot

*** Test Cases ***
POC CSV
    [Tags]  csv

#    ${expected_list_header}  set variable  Assigned Store  Store Name  Name  HJ One User  ${NONE}  ${NONE}  ${NONE}  ${NONE}  ${NONE}  ${NONE}  ${NONE}  ${NONE}
#    ${expected_list_row_1}  set variable  TH5006  Pitsanulok  Kasama Danpuwakun  TH22924405
#    ${expected_list_row_2}  set variable  TH5006  Pitsanulok  Pansa Sueaman  TH23710920

#    ${list}  Read Csv File To List  /Users/pornnipas/Desktop/User_Setup_5006.csv
#    ${list}[${i}]  Read Csv File To List  /Users/pornnipas/Desktop/User_Setup_5006.csv
#    lists should be equal  ${expected_list_header}  ${list[0]}
#    lists should be equal  ${expected_list_row_1}  ${list[1]}
#    lists should be equal  ${expected_list_row_2}  ${list[2]}

#    ${list}  Read Csv File To List  /Users/pornnipas/Desktop/User_Setup_5006.csv
    ${list}  Read Csv File To List  ${CURDIR}/User_Setup_5006.csv
    ${length_list} =	Get Length	${list}
    FOR  ${i}  IN RANGE  ${length_list}
        log  ${list}[${i}]
        ${assigned_store}  get assigned store from csv  ${list}[${i}]
        ${store_name}  get store name from csv  ${list}[${i}]
        ${name}  get name from csv  ${list}[${i}]
        ${hj_one_user}  get hj one user from csv  ${list}[${i}]
        ${email_address}  get email address from csv  ${list}[${i}]
        ${role}  get role from csv  ${list}[${i}]
    END

#OS
#    ${list}  get file  /Users/pornnipas/Desktop/User_Setup_5006.csv
#    ${all_line}=  split to lines  ${list}
#    FOR  ${line}  IN  ${all_line}
#         ${a}  Get From List  ${line}  0
##        ${value}  Get Variable Value  ${line}
##        log  ${value}
#    END
