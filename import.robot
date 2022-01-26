*** Settings ***
Library  OperatingSystem
Library  Selenium2Library
Library  CSVLibrary
Library  String
Library  JSONLibrary
Library  Collections
Resource  keywords/common_keywords.robot
Library  keywords/common_command.py
Variables  resources/configs/${ENV}/config.yaml
Variables  keywords/highjump_elements.yaml
Variables  keywords/onelogin_elements.yaml
Variables  resources/testdata/testdata.yaml