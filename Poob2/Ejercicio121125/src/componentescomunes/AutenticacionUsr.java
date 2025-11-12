package componentescomunes;

public class AutenticacionUsr {
    public boolean autenticar(String usuario, String clave){
        System.out.println("usuario = " + usuario + ", clave = " + clave);
        return usuario.equals("admin") && clave.equals("1234");
    }
}
