*** Settings ***
Library  OperatingSystem
Library  Selenium2Library
Resource  keywords/common_keywords.robot
Variables  resources/configs/${ENV}/config.yaml
Variables  keywords/highjump_elements.yaml
Variables  keywords/onelogin_elements.yaml
Variables  resources/testdata/testdata.yaml