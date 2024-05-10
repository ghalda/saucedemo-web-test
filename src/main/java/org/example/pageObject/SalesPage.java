package org.example.pageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

public class SalesPage {
    public static WebDriver driver;

    public SalesPage(WebDriver driver){
        PageFactory.initElements(driver, this);
        this.driver = driver;
    }

    @FindBy(xpath = "//span[@class='title']")
    private WebElement verifySalesPage;

    public boolean verifySalesPage(){
        return verifySalesPage.isDisplayed();
    }

    public void addProduct(String productName){
        String a = "//div[text()[contains(.,'"+ productName +"')]]/ancestor::div[@class='inventory_item_description']//*[contains(@id, 'add-to-cart')]";
        driver.findElement(By.xpath(a)).click();
    }

    @FindBy(xpath = "//div[@id='shopping_cart_container']/a[1]")
    private WebElement cartButton;

    public void clickCart(){
        cartButton.isDisplayed();
        cartButton.click();
    }

    @FindBy(xpath = "//select[@class='product_sort_container']")
    private WebElement sortProduct;

    public void setSortProduct(String sort){
        Select a = new Select(sortProduct);
        a.selectByVisibleText(sort);
    }

    public void verifySortLabel(String sortLabel){
        String a = "//span[contains(@class, 'active_option') and text()='"+ sortLabel +"']";
        driver.findElement(By.xpath(a)).isDisplayed();
    }
}
