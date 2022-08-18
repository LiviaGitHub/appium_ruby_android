@search_country_code_feature
Feature: As a user, I want to search for country codes

  Background:
    Given User is on login screen

  @non_existent_country_code
  Scenario: User searches for a non-existent country code
    When User search for the country code "000"
    Then The search is displayed null

  @non_existent_country_name
  Scenario: User searches for a non-existent country name
    When User search for the country code "test"
    Then The search is displayed null

  # NOTE:
  # I tried searching the country code using "+" but the search doesn't work,
  # I'm not sure if this was intentional or a bug.
  # example: +49
  # It does not work.
  @existent_country_code
  Scenario: User searches for a country code number using +
    When User search for the country code "+55"
    Then The search will display the country related to the code

  Scenario: Country code must be available in alphabetical order
    When User opens the search
    Then Country code is available in alphabetical order
