package bdd.Runner;

import com.intuit.karate.junit5.Karate;

public class RunnerTest {

    @Karate.Test
    Karate testSample(){
        return Karate.run("src/test/java/bdd/API_Serverest/GET_Usuarios.feature").tags("@server17");

    }

}
