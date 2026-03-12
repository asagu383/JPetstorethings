package my.domain.name.JPetstorethings.steps;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;

public class LoginSteps {

	WebDriver driver;

	@Given("^I open Chrome browser$")
	public void i_open_Chrome_browser() throws Throwable {
	 System.setProperty("webdriver.chrome.driver", "chrome/chromedriver.exe");
	 driver = new ChromeDriver();
	 driver.manage().window().maximize();
	}
	
	@Given("I go to JPetStore page")
	public void i_go_to_j_pet_store_page() {
	    // Write code here that turns the phrase above into concrete actions
	    
	}
	
	@When("I enter valid {string} and {string} combination     Then I should be able to login successfully")
	public void i_enter_valid_and_combination_then_i_should_be_able_to_login_successfully(String string, String string2) {
	    // Write code here that turns the phrase above into concrete actions
	    
	}
	

}
