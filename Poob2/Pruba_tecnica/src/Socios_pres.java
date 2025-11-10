public class Socios_pres {
    private int id;
    private String nombre;
    private String direccion;
    private int telefono;
    private int nacimiento;

    public Socios_pres(int id,
                       String nombre,
                       String direccion,
                       int telefono,
                       int nacimiento){
        this.id = id;
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
        this.nacimiento = nacimiento;
    }

    /*
    public void mostrar_info(){
        System.out.println("id: "+ id+
                "\nnombre:" + nombre+
                "\ndireccion:" + direccion+
                "\ntelefono:" + telefono+
                "\nnombre:" + nacimiento);

    }*/
}
