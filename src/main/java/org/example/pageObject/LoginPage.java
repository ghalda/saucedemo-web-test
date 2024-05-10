package org.example.pageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage {
    public static WebDriver driver;

    public LoginPage(WebDriver driver){
        PageFactory.initElements(driver, this);
        this.driver = driver;
    }

    @FindBy(xpath = "//input[@id='user-name']")
    private static WebElement userName;

    @FindBy(xpath = "//input[@id='password']")
    private static WebElement userPassword;

    @FindBy(xpath = "//input[@id='login-button']")
    private static WebElement btnLogin;

    public void setUserName(String name){
        userName.sendKeys(name);
    }

    public void setUserPassword(String password){
        userPassword.sendKeys(password);
    }

    public void clickLogin(){
        btnLogin.click();
    }

    public static boolean verifyLandingPage(){
        return userName.isDisplayed();
    }

    public void errorLogin(String errorText){
        String err = "//h3[.='"+ errorText +"']";
        driver.findElement(By.xpath(err)).isDisplayed();
    }
}
