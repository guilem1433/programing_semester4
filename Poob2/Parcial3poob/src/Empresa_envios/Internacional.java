// Java
package Empresa_envios;

public class Internacional implements Envios {
    private int id;
    private double costo;
    private int tiempo;
    private String manejo;

    // Hardcoded constructor with defaults for international shipping
    public Internacional() {
        this.id = 4001;            // default id
        this.costo = 49.99;        // higher cost for international
        this.tiempo = 96;          // longer delivery time in hours
        this.manejo = "Internacional"; // handling type
    }

    public int getId() { return id; }
    public double getCosto() { return costo; }
    public int getTiempo() { return tiempo; }
    public String getManejo() { return manejo; }

    public static void main(String[] args) {
        Internacional intl = new Internacional();
        System.out.println("ID: " + intl.getId());
        System.out.println("Costo: " + intl.getCosto());
        System.out.println("Tiempo (horas): " + intl.getTiempo());
        System.out.println("Manejo: " + intl.getManejo());
    }
}
