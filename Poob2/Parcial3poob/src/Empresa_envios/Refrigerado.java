// Java
package Empresa_envios;

public class Refrigerado implements Envios {
    private int id;
    private double costo;
    private int tiempo;
    private String manejo;

    // Hardcoded constructor with defaults for refrigerated shipping
    public Refrigerado() {
        this.id = 3001;           // default id
        this.costo = 34.99;       // cost for refrigerated handling
        this.tiempo = 48;         // delivery time in hours
        this.manejo = "Refrigerado"; // handling type
    }

    public int getId() {
        return id;
    }

    public double getCosto() {
        return costo;
    }

    public int getTiempo() {
        return tiempo;
    }

    public String getManejo() {
        return manejo;
    }

    public static void main(String[] args) {
        Refrigerado r = new Refrigerado();
        System.out.println("ID: " + r.getId());
        System.out.println("Costo: " + r.getCosto());
        System.out.println("Tiempo (horas): " + r.getTiempo());
        System.out.println("Manejo: " + r.getManejo());
    }
}
