// Java
package Empresa_envios;

public class Express implements Envios {
    private int id;
    private double costo;
    private int tiempo;
    private String manejo;

    // Hardcoded constructor with reasonable defaults for express shipping
    public Express() {
        this.id = 2001;           // default id
        this.costo = 29.99;       // higher cost for express
        this.tiempo = 24;         // faster delivery in hours
        this.manejo = "Urgente";  // handling for express
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
        Express express = new Express();
        System.out.println("ID: " + express.getId());
        System.out.println("Costo: " + express.getCosto());
        System.out.println("Tiempo (horas): " + express.getTiempo());
        System.out.println("Manejo: " + express.getManejo());
    }
}
