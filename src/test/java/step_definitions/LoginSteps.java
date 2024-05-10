package step_definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.example.pageObject.LoginPage;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

public class LoginSteps {
    private WebDriver webDriver;

    public LoginSteps(){
        super();
        this.webDriver = Hooks.webDriver;
    }

    @Given("User already on website sauce demo")
    public void verifyLandingPage(){
        LoginPage loginPage = new LoginPage(webDriver);
        Assert.assertTrue(loginPage.verifyLandingPage());
    }

    @When("User input \"(.*)\" as userName and input \"(.*)\" as password")
    public void inputValid(String userName, String password) {
        LoginPage loginPage = new LoginPage(webDriver);
        loginPage.setUserName(userName);
        loginPage.setUserPassword(password);
    }

    @And("User click on Login button")
    public void clickLoginButton(){
        LoginPage loginPage = new LoginPage(webDriver);
        loginPage.clickLogin();
    }

    @Then("User see error \"(.*)\"")
    public void errorLogin(String errorText){
        LoginPage loginPage = new LoginPage(webDriver);
        loginPage.errorMessage(errorText);
    }
}
