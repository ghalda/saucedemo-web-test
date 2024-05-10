package org.example.pageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class CartPage {

    public static WebDriver driver;

    public CartPage(WebDriver driver){
        PageFactory.initElements(driver, this);
        this.driver = driver;
    }

    @FindBy(xpath = "//span[.='Your Cart']")
    private WebElement verifyCartPage;

    public boolean verifyCartPage(){
        return verifyCartPage.isDisplayed();
    }

    @FindBy(xpath = "//button[@id='checkout']")
    private WebElement buttonCheckout;

    public void clickCheckout(){
        buttonCheckout.isDisplayed();
        buttonCheckout.click();
    }

    public void removeProduct(String productName){
        String e = "//div[.='"+ productName +"']/ancestor::div[@class='cart_item_label']//button[text()[contains(.,'Remove')]]";
        driver.findElement(By.xpath(e)).isDisplayed();
        driver.findElement(By.xpath(e)).click();
    }

    public void verifyProductOnCart(String productName){
        String e = "//div[contains(@class, 'inventory_item_name') and text()='"+ productName +"']";
        driver.findElement(By.xpath(e)).isDisplayed();
    }
}
