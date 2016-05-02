Feature: Integrate data uploaded from excel files downloaded from PICA website

  Scenario: User navigates to import data page
    Given User is authenticated
    And User is on the home page
    When User clicks on the Import PICA evaluation data button
    Then User should be on the import page

  Scenario: User uploads excel file
    Given User is authenticated
    And User is on the import page
    When User selects excel file
    And User clicks on the Upload button
    Then User should see the evaluations page for 2015C
    And User should see 9 new evaluations imported. 0 evaluations updated.

  Scenario: User uploads a non-excel file
    Given User is authenticated
    And User is on the import page
    When User selects a non-excel file
    And User clicks on the Upload button
    Then User should be on the import page
    And User should see message stating There was an error parsing that XLSX file. Maybe it is corrupt?

  Scenario: User does not select a file to uploaded
    Given User is authenticated
    And User is on the import page
    And User clicks on the Upload button
    Then User should see message stating File not attached, please select file to upload
