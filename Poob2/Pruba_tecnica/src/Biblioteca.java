public class Biblioteca {
     private int id;
     private String nombre;

     public Biblioteca(int id, String nombre){
         this.id = id;
         this.nombre = nombre;
     }

     public void mostrar_info(){
         System.out.println("id: "+ id+ "nombre:" + nombre);

     }
}
