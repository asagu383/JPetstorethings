Feature: Create New Account
  As a new visitor
  I want to create a new account
  So that I can save my information and make purchases

  Scenario Outline: Register with valid information
    Given I open JPetStore in the browser
    And I navigate to the registration page
    When I fill in the registration form with "<username>" "<password>" "<firstname>" "<lastname>" "<email>"
    And I submit the registration form
    Then my account should be created successfully

    Examples:
      | username  | password | firstname | lastname | email            |
      | testuser1 | Pass1234 | John      | Doe      | john@test.com    |
      | testuser2 | Pass5678 | Jane      | Smith    | jane@test.com    |

  Scenario: Register with existing username
    Given I open JPetStore in the browser
    And I navigate to the registration page
    When I fill in the registration form with "j2ee" "Pass1234" "John" "Doe" "john@test.com"
    And I submit the registration form
    Then I should see a registration error message

  Scenario: Register with empty required fields
    Given I open JPetStore in the browser
    And I navigate to the registration page
    When I fill in the registration form with "" "" "" "" ""
    And I submit the registration form
    Then I should see a registration error message
