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

    @When("I click the Sign In button")
    public void i_click_signin() {
        driver.findElement(By.name("signin")).click();
    }

    @Then("I should be logged in successfully")
    public void verify_login() {
        boolean isSignOutPresent = driver.findElements(By.linkText("Sign Out")).size() > 0;
        Assert.assertTrue("Login failed!", isSignOutPresent);
        driver.quit();
    }

    @Given("I am on the JPetStore Sign In page where I can register as a new member")
    public void go_to_registration() {
        driver.get("http://104.154.34.40:8080/jpetstore/account/newaccountform");
    }

    @When("I fill in UserID {string}, password {string}, and profile info")
    public void fill_registration(String id, String pass) {
        driver.findElement(By.name("username")).sendKeys(id);
        driver.findElement(By.name("password")).sendKeys(pass);
        driver.findElement(By.name("repeatPassword")).sendKeys(pass);
        driver.findElement(By.name("account.firstName")).sendKeys("John");
        driver.findElement(By.name("account.lastName")).sendKeys("Doe");
        driver.findElement(By.name("account.email")).sendKeys("test@test.com");
    }

    @When("I click {string}")
    public void click_button(String btn) {
        driver.findElement(By.name("newAccount")).click();
    }
}

}
