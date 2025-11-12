package componentescomunes;
import java.time.LocalDateTime;

public class LoggerSistema {
    public void registrar(String mensaje){
        System.out.println("Log - "+ LocalDateTime.now() + mensaje);
    }
}
