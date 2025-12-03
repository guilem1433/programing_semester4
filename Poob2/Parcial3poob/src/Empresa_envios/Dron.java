// Java
package Empresa_envios;

public class Dron implements Vehiculos {
    private int id;
    private String name;

    public Dron() {
        this.id = 3003;
        this.name = "Dron";
    }

    public int getId() { return id; }
    public String getName() { return name; }

    public static void main(String[] args) {
        Dron dron = new Dron();
        System.out.println("Vehiculo: Dron");
        System.out.println("ID: " + dron.getId());
        System.out.println("Name: " + dron.getName());
    }
}
