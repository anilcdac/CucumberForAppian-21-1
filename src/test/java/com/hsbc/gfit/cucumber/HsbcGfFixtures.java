package com.hsbc.gfit.cucumber;

import com.appiancorp.ps.cucumber.fixtures.CucumberBaseFixture;
import com.appiancorp.ps.cucumber.fixtures.CucumberTempoFixture;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class HsbcGfFixtures{

    private CucumberTempoFixture cucumberTempoFixture= new CucumberTempoFixture();
    private CucumberBaseFixture fixture= new CucumberBaseFixture();
    public static WebDriver driver = null;

    private String dummyFilePath = "C:\\appian\\cucumber\\Note.txt";

    @Given("^I populate file upload field \"([^\"]*)\" with a dummy document")
    public void populateFileUploadFieldWithDummyDoc(String fieldName) {
        cucumberTempoFixture.populateFieldWith("FILE_UPLOAD",fieldName, dummyFilePath);
    }
    @When("I click on {string}")
    public void i_click_on(String string) {
        WebElement element = CucumberTempoFixture.getSettings().getDriver().findElement(By.partialLinkText(string));
        element.click();
//        throw new io.cucumber.java.PendingException();
    }



}
