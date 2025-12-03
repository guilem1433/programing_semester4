// Java
package Empresa_envios;

public class Camion implements Vehiculos {
    private int id;
    private String name;

    public Camion() {
        this.id = 3001;
        this.name = "Camion";
    }

    public int getId() { return id; }
    public String getName() { return name; }

    public static void main(String[] args) {
        Camion camion = new Camion();
        System.out.println("Vehiculo: Camion");
        System.out.println("ID: " + camion.getId());
        System.out.println("Name: " + camion.getName());
    }
}
