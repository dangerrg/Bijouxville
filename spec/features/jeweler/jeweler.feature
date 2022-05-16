Feature: When I visit my account as an admin
  Background:
  Given jewelers with jewelry
  And I'm on the home page

  Scenario: I should be able to remove jewelry
    When I navigate to a jewelry page
    And delete it
    And return to the home page
    Then the totals have been updated
    And the type of jewelry and gemstone has not changed
