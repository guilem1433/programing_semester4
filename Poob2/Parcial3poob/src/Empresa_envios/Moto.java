// Java
package Empresa_envios;

public class Moto implements Vehiculos {
    private int id;
    private String name;

    public Moto() {
        this.id = 3002;
        this.name = "Moto";
    }

    public int getId() { return id; }
    public String getName() { return name; }

    public static void main(String[] args) {
        Moto moto = new Moto();
        System.out.println("Vehiculo: Moto");
        System.out.println("ID: " + moto.getId());
        System.out.println("Name: " + moto.getName());
    }
}
