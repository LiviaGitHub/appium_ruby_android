@login_screen
Feature: As a user, I want to log in to app

  Background:
    Given User is on login screen

  @login_successfully @automated_test
  Scenario: User login successfully
    When User search for the country code "Germany"
    And User select the country code
    And User fills the phone field with "16200000001"
    And Click Continue
    And User fills in SMS code fields "1" "2" "3" "4"
    Then User successfully logs into App

  @invalid_login @wrong_country_code @automated_test
  Scenario: User tries to login with a wrong country code
    When User search for the country code "Brazil"
    And User select the country code
    And User fills the phone field with "16200000001"
    And Click Continue
    Then An error message is displayed
    And User remains on the login screen

  @invalid_login @wrong_phone_number @automated_test
  Scenario: User tries to login with a wrong phone number
    When User search for the country code "Germany"
    And User select the country code
    And User fills the phone field with "16200000022"
    And Click Continue
    Then An error message is displayed
    And User remains on the login screen

  @invalid_login @phone_number_null @automated_test
  Scenario: User tries to login with empty phone number field
    When Click Continue
    Then An error message is displayed
    And User remains on the login screen

  @invalid_login @phone_number_with_letters @automated_test
  Scenario: User fills phone number field with letters and special characters
    When User fills the phone field with "lllllll+++"
    And Click Continue
    Then An error message is displayed
    And User remains on the login screen

  @login_screen_layout @automated_test
  Scenario: User must see all information to login
    When User sees a description of how to access the application
    Then By default, the country code field is already filled with a value
