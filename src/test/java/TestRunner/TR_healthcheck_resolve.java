package TestRunner;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions (
        features = {
                "src/test/resources/features/healthcheck"
                },
        glue = {"com.appiancrop.ps.cucumber", "com.hsbc.gfit.cucumber"},
        plugin = {"pretty",
                "html:target/SystemTestReports/html/resolvehtml",
                "json:target/SystemTestReports/json/resolve.json",
                "junit:target/SystemTestReports/junit/resolve.xml"},
        tags = "@heathcheckresolve"

)


public class TR_healthcheck_resolve {
}
