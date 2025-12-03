// Java
package Empresa_envios;

public class Autonomo implements Vehiculos {
    private int id;
    private String name;

    public Autonomo() {
        this.id = 3004;
        this.name = "Autonomo";
    }

    public int getId() { return id; }
    public String getName() { return name; }

    public static void main(String[] args) {
        Autonomo autonomo = new Autonomo();
        System.out.println("Vehiculo: Autonomo");
        System.out.println("ID: " + autonomo.getId());
        System.out.println("Name: " + autonomo.getName());
    }
}
