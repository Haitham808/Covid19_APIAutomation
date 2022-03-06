package Runner;
import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.Assert.assertTrue;
import org.junit.Test;




@KarateOptions(features="classpath:resources/features",tags = {"~@ignore"})
public class TestRunner {

    @Test
    public void testParallel() {
        Results results = Runner.parallel(getClass(), 5);
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }

    
}