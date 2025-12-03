// Java
package Empresa_envios;

import java.util.Scanner;

public class Crear_transporte implements Vehiculos {
    private int id;
    private String name;

    public Crear_transporte(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() { return id; }
    public String getName() { return name; }

    public static Crear_transporte createFromInput(Scanner sc) {
        System.out.print("Enter id (int): ");
        int id = Integer.parseInt(sc.nextLine().trim());

        System.out.print("Enter name: ");
        String name = sc.nextLine().trim();

        return new Crear_transporte(id, name);
    }
}
