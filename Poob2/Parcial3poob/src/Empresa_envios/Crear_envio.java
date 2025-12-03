// Java
package Empresa_envios;

import java.util.Scanner;

public class Crear_envio implements Envios {
    private int id;
    private double costo;
    private int tiempo;
    private String manejo;

    public Crear_envio(int id, double costo, int tiempo, String manejo) {
        this.id = id;
        this.costo = costo;
        this.tiempo = tiempo;
        this.manejo = manejo;
    }

    public int getId() { return id; }
    public double getCosto() { return costo; }
    public int getTiempo() { return tiempo; }
    public String getManejo() { return manejo; }

    public static Crear_envio createFromInput(Scanner sc) {
        System.out.print("Enter id (int): ");
        int id = Integer.parseInt(sc.nextLine().trim());

        System.out.print("Enter costo (double): ");
        double costo = Double.parseDouble(sc.nextLine().trim());

        System.out.print("Enter tiempo (int, minutes): ");
        int tiempo = Integer.parseInt(sc.nextLine().trim());

        System.out.print("Enter manejo: ");
        String manejo = sc.nextLine().trim();

        return new Crear_envio(id, costo, tiempo, manejo);
    }
}
