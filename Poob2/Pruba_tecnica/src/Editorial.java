public class Editorial {
    private int id;
    private String nombre;
    private String direccion;
    private String contacto;

    public Editorial(int id,
                       String nombre,
                       String direccion,
                       String contacto)
    {
        this.id = id;
        this.nombre = nombre;
        this.direccion = direccion;
        this.contacto = contacto;
    }

    /*public void mostrar_info(){
        System.out.println("id: "+ id+
                "\nnombre:" + nombre+
                "\ndireccion:" + direccion+
                "\ncontacto:" + contacto
                );

    }*/
}
