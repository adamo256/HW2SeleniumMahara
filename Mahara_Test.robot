*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser to Mahara
Test Teardown  Capture Screenshot And Close Browser
Resource    Keywords/Mahara/Mahara_Keywords.txt

*** Test Cases ***
MaharaInvalidLogin  
    Login To Mahara    invalid_Login    Invalid_Password
    Wait Until Page Contains Element     id=messages       
    Page Should Contain    You have not provided the correct credentials to log in. Please check your username and password are correct.
    Page Should Contain    There was an error with submitting this form. Please check the marked fields and try again.
         
MaharaAdminLogin
    Login To Mahara    admin    ${GeneralPassword}
    Page Should Contain    ${ContainAdmin}
     
MaharaStudentLogin
    Login To Mahara    Student    ${GeneralPassword}   
    Page Should Contain    ${ContainStudent} 
MaharalearnerLogin
    Login To Mahara    learner    ${GeneralPassword}
    Page Should Contain    ${Containlearner}    
MaharaStaffLogin
    Login To Mahara    Staff    ${GeneralPassword}
    Page Should Contain    ${ContainStaff}
MaharaSitestaffLogin
    Login To Mahara    Sitestaff    ${GeneralPassword}  
    Page Should Contain    ${ContainSitestaff}
         
    
    
    
    