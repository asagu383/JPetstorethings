Feature: Test JPetStore Login 
  Scenario Outline: Test JPetStore login 
    Given I open Chrome browser 
    And I go to JPetStore page 
    When I enter valid "<username>" and "<password>" combination     Then I should be able to login successfully 
 
    Examples:  
	      | username 	| password    | 
      | validusername@domain.com | Secret! | 
      | firsttimeuser@ domain.com | ValidPass! | 
