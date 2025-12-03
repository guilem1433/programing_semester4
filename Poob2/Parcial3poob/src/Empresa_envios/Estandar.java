// Java
package Empresa_envios;

public class Estandar implements Envios {
    private int id;
    private double costo;
    private int tiempo;
    private String manejo;

    // Hardcoded constructor with reasonable defaults
    public Estandar() {
        this.id = 1001;           // default id
        this.costo = 15.99;       // default cost
        this.tiempo = 72;         // default time in hours
        this.manejo = "Fragil";   // default handling
    }

    // Optional getters
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
        Estandar estandar = new Estandar();
        System.out.println("ID: " + estandar.getId());
        System.out.println("Costo: " + estandar.getCosto());
        System.out.println("Tiempo (horas): " + estandar.getTiempo());
        System.out.println("Manejo: " + estandar.getManejo());
    }
}

