Feature: Change Password
  As a logged-in user
  I want to change my password
  So that I can keep my account secure

  Scenario Outline: Change password successfully
    Given I open JPetStore in the browser
    And I login with "<username>" and "<current_password>"
    And I navigate to the account settings page
    When I change my password to "<new_password>"
    And I save the changes
    Then my password should be updated successfully

    Examples:
      | username | current_password | new_password |
      | quality1 | 12345678         | NewPass123   |
      | quality2 | 12345678         | NewPass456   |

  Scenario: Change password with wrong current password
    Given I open JPetStore in the browser
    And I login with "quality1" and "12345678"
    And I navigate to the account settings page
    When I change my password to ""
    And I save the changes
    Then I should see a password change error message
