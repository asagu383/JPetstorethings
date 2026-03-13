Feature: Test JPetStore Login 
    As a registered user
  I want to login with my username and password
  So that I can access my account

  Scenario Outline: Test JPetStore login with valid credentials
   # Given I open Chrome browser 
    #And I go to JPetStore page 
   # When I enter valid "<username>" and "<password>" combination     Then I should be able to login successfully 
  Given I open JPetStore in the browser
    When I enter "<username>" and "<password>" on login page
    And I click the Sign In button
    Then I should be logged in successfully
	
    Examples:  
	      | username 	| password    | 
      #| validusername@domain.com | Secret! | 
      #| firsttimeuser@ domain.com | ValidPass! | 
	        | j2ee     | j2ee     |
            | quality1 | 12345678 |

	  Scenario: Login with invalid credentials
    Given I open JPetStore in the browser
    When I enter "wronguser" and "wrongpass" on login page
    And I click the Sign In button
    Then I should see a login error message

	Scenario: Login with empty credentials
    Given I open JPetStore in the browser
    When I enter "" and "" on login page
    And I click the Sign In button
    Then I should see a login error message


 Scenario: Update existing user password
  Given I am logged in as "j2ee"
  When I go to My Account and change my password to 1450887
  And I click Save Account Information
  Then I should be able to login with "j2ee" and "1450887"
	

