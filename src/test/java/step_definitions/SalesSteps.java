package step_definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.example.pageObject.CartPage;
import org.example.pageObject.SalesPage;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

public class SalesSteps {
    private WebDriver webDriver;

    public SalesSteps(){
        super();
        this.webDriver = Hooks.webDriver;
    }
    @Then("User already on sales page")
    public void verifySalesPage(){
        SalesPage salesPage = new SalesPage(webDriver);
        Assert.assertTrue(salesPage.verifySalesPage());
    }

    @When("User add \"(.*)\" to cart")
    public void addProductToCart(String productName){
        SalesPage salesPage = new SalesPage(webDriver);
        salesPage.addProduct(productName);
    }

    @And("User click icon cart")
    public void clickCart(){
        SalesPage salesPage = new SalesPage(webDriver);
        salesPage.clickCart();
    }

    @When("User select product list by \"(.*)\"")
    public void sortProduct(String sort) {
        SalesPage salesPage = new SalesPage(webDriver);
        salesPage.setSortProduct(sort);
    }

    @Then("User already sort product list by \"(.*)\"")
    public void verifySortLabel(String sort) {
        SalesPage salesPage = new SalesPage(webDriver);
        salesPage.verifySortLabel(sort);
    }


}
