@sms_code_feature
Feature: As a user, I want to receive a SMS code to log in to the application.

  Background:
    Given User is on login screen
    When User search for the country code "Germany"
    And User select the country code
    And User fills the phone field with "16200000001"
    And Click Continue

  @invalid_sms_code @automated_test
  Scenario: User fills SMS code fields with invalid codes
    When User fills in SMS code fields "0" "2" "3" "0"
    Then An error message is displayed
    And User remains on SMS request screen
