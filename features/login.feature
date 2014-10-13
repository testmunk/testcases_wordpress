Feature: Login

  Scenario: As an existing user I can log in into the app
    Given I am on the Login screen
    When I type "fryclukasz" in the login field
    And I type "T3St123#" in the password field
    And I click sign in button
    Then I should be on the Home screen